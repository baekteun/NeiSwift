import Combine
import Foundation

public extension SchoolInfoFetchable where Self: NeisRequestable {
    func fetchSchoolList(
        key: String,
        pIndex: Int,
        pSize: Int,
        ATPT_OFCDC_SC_CODE: String?,
        SD_SCHUL_CODE: String?,
        SCHUL_NM: String?,
        SCHUL_KND_SC_NM: String?,
        LCTN_SC_NM: String?,
        FOND_SC_NM: String?,
        completion: @escaping (Result<[SchoolInfoResponse], Error>) -> Void
    ) {
        let parameters: [URLQueryItem] = [
            "KEY": key,
            "Type": "json",
            "pIndex": "\(pIndex)",
            "pSize": "\(pSize)",
            "ATPT_OFCDC_SC_CODE": ATPT_OFCDC_SC_CODE,
            "SD_SCHUL_CODE": SD_SCHUL_CODE,
            "SCHUL_NM": SCHUL_NM,
            "SCHUL_KND_SC_NM": SCHUL_KND_SC_NM,
            "LCTN_SC_NM": LCTN_SC_NM,
            "FOND_SC_NM": FOND_SC_NM,
        ]
        .reduce(into: [URLQueryItem]()) { partialResult, dict in
            guard let value = dict.value else { return }
            let item = URLQueryItem(name: dict.key, value: value)
            partialResult.append(item)
        }

        neisRequest(key: "schoolInfo", parameters: parameters, completion: completion)
    }
}
