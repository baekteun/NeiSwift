import Foundation

public struct Neis: HasURLSession, HasNeisParser, NeisRequestable {
    public var urlSession: URLSession
    public var neisParser: any NeisParserProtocol

    public init(
        urlSession: URLSession = .shared,
        neisParser: any NeisParserProtocol = NeisParser()
    ) {
        self.urlSession = urlSession
        self.neisParser = neisParser
    }
}
