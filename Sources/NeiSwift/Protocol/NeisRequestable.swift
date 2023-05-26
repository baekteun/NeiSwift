import Foundation

public protocol NeisRequestable {
    func neisRequest<T: Decodable>(
        key: String,
        parameters: [URLQueryItem],
        completion: @escaping (Result<T, Error>) -> Void
    )
}

public extension NeisRequestable where Self: HasURLSession, Self: HasNeisParser {
    func neisRequest<T: Decodable>(
        key: String,
        parameters: [URLQueryItem],
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        var urlComponents = URLComponents(string: "\(NeisConstants.baseNeisURL)/\(key)")
        urlComponents?.queryItems = parameters
        guard
            let requestURL = urlComponents?.url
        else {
            completion(.failure(NeisError.invalidNeisURL))
            return
        }

        urlSession.dataTask(with: requestURL) { data, response, error in
            if let error {
                completion(.failure(error))
                return
            }

            if let data {
                do {
                    let json = try JSONSerialization.jsonObject(with: data) as? [String: Any] ?? [:]
                    let response: T = try neisParser.parse(json: json, key: "\(key)")
                    completion(.success(response))
                } catch {
                    completion(.failure(error))
                }
                return
            }
        }.resume()
    }
}
