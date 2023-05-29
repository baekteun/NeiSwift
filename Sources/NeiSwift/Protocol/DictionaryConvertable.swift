import Foundation

public protocol DictionaryConvertable {
    func toDictionary() -> [String: Any]
}

extension DictionaryConvertable {
    public func toDictionary() -> [String: Any] {
        let mirror = Mirror(reflecting: self)
        let mirrorMap: [(String, Any)] = mirror.children
            .compactMap {
                guard let key = $0.label else { return nil }
                return (key, $0.value)
            }
        let dict = Dictionary(uniqueKeysWithValues: mirrorMap)
        return dict
    }
}
