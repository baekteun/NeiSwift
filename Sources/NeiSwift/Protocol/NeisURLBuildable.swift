import Foundation

public protocol NeisURLBuildable {
    func buildNeisURL(field: String, parameters: [URLQueryItem]) throws -> URL
}

extension NeisURLBuildable {
    public func buildNeisURL(field: String, parameters: [URLQueryItem]) throws -> URL {
        var urlComponents = URLComponents(string: "https://open.neis.go.kr/hub/\(field)")
        urlComponents?.queryItems = parameters
        guard
            let requestURL = urlComponents?.url
        else {
            throw NeisError.invalidNeisURL
        }
        return requestURL
    }
}
