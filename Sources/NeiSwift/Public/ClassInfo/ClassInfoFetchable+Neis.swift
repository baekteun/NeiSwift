import Combine
import Foundation

public extension ClassInfoFetchable where Self: NeisRequestable {
    func fetchClassInfo(
        key: String,
        pIndex: Int,
        pSize: Int,
        ATPT_OFCDC_SC_CODE: String,
        SD_SCHUL_CODE: String,
        AY: String?,
        GRADE: String?,
        DGHT_CRSE_SC_NM: String?,
        SCHUL_CRSE_SC_NM: String?,
        ORD_SC_NM: String?,
        DDDEP_NM: String?,
        completion: @escaping (Result<[ClassInfoResponse], Error>) -> Void
    ) {
        let parameters: [URLQueryItem] = [
            "KEY": key,
            "Type": "json",
            "pIndex": "\(pIndex)",
            "pSize": "\(pSize)",
            "ATPT_OFCDC_SC_CODE": ATPT_OFCDC_SC_CODE,
            "SD_SCHUL_CODE": SD_SCHUL_CODE,
            "AY": AY,
            "GRADE": GRADE,
            "DGHT_CRSE_SC_NM": DGHT_CRSE_SC_NM,
            "SCHUL_CRSE_SC_NM": SCHUL_CRSE_SC_NM,
            "ORD_SC_NM": ORD_SC_NM,
            "DDDEP_NM": DDDEP_NM
        ]
        .reduce(into: [URLQueryItem]()) { partialResult, dict in
            guard let value = dict.value else { return }
            let item = URLQueryItem(name: dict.key, value: value)
            partialResult.append(item)
        }

        neisRequest(key: "classInfo", parameters: parameters, completion: completion)
    }
}
