import Foundation

public protocol NeisParserProtocol {
    func parse<T: Decodable>(json: [String: Any], key: String) throws -> T
}

public extension NeisParserProtocol {
    func parse<T: Decodable>(json: [String: Any], key: String) throws -> T {
        guard
            json["RESULT"] == nil
        else {
            throw NeisError.noData
        }
        var info = json[key] as? [[String: Any]] ?? []
        _ = info.removeFirst()
        guard let rowJson = info.first?["row"] else {
            throw NeisError.noData
        }

        let responseData = try JSONSerialization.data(withJSONObject: rowJson, options: [.fragmentsAllowed])
        return try JSONDecoder().decode(T.self, from: responseData)
    }

}
