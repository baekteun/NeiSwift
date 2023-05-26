import Combine
import Foundation

public extension SchulAflcoinfoFetchable where Self: NeisRequestable {
    func fetchSchulAflcoinfoList(
        key: String,
        pIndex: Int,
        pSize: Int,
        ATPT_OFCDC_SC_CODE: String,
        SD_SCHUL_CODE: String?,
        DGHT_CRSE_SC_NM: String?,
        completion: @escaping (Result<[SchulAflcoinfoResponse], Error>) -> Void
    ) {
        let parameters: [URLQueryItem] = [
            "KEY": key,
            "Type": "json",
            "pIndex": "\(pIndex)",
            "pSize": "\(pSize)",
            "ATPT_OFCDC_SC_CODE": ATPT_OFCDC_SC_CODE,
            "SD_SCHUL_CODE": SD_SCHUL_CODE,
            "DGHT_CRSE_SC_NM": DGHT_CRSE_SC_NM
        ]
        .reduce(into: [URLQueryItem]()) { partialResult, dict in
            guard let value = dict.value else { return }
            let item = URLQueryItem(name: dict.key, value: value)
            partialResult.append(item)
        }

        neisRequest(key: "schulAflcoinfo", parameters: parameters, completion: completion)
    }
}
