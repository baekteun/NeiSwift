import Foundation

public enum NeisError: Error {
    case noData
    case invalidNeisURL
}

extension NeisError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .noData:
            return "해당하는 데이터가 없습니다."

        case .invalidNeisURL:
            return "Neis Open API URL이 올바르지 않습니다."
        }
    }
}
