import Foundation

public protocol NeisRequestable {
    func neisRequest<T: Decodable>(
        key: String,
        parameters: [URLQueryItem],
        completion: @escaping (Result<T, Error>) -> Void
    )
}

public extension NeisRequestable where Self: HasURLSession, Self: HasNeisParser, Self: NeisURLBuildable {
    func neisRequest<T: Decodable>(
        key: String,
        parameters: [URLQueryItem],
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        let requestURL: URL
        do {
            requestURL = try self.buildNeisURL(field: key, parameters: parameters)
        } catch {
            completion(.failure(error))
            return
        }

        urlSession.dataTask(with: requestURL) { data, response, error in
            if let error {
                completion(.failure(error))
                return
            }

            if let data {
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed) as? [String: Any] ?? [:]
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
