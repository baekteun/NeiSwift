import Combine
import Foundation

public extension SpsTimeTableFetchable where Self: NeisRequestable {
    func fetchSpsTimeTable(
        key: String,
        pIndex: Int,
        pSize: Int,
        ATPT_OFCDC_SC_CODE: String,
        SD_SCHUL_CODE: String,
        AY: String?,
        SEM: String?,
        ALL_TI_YMD: String?,
        SCHUL_CRSE_SC_NM: String?,
        GRADE: String?,
        CLRM_NM: String?,
        CLASS_NM: String?,
        PERIO: String?,
        TI_FROM_YMD: String?,
        TI_TO_YMD: String?,
        completion: @escaping (Result<[SpsTimeTableResponse], Error>) -> Void
    ) {
        let parameters: [URLQueryItem] = [
            "KEY": key,
            "Type": "json",
            "pIndex": "\(pIndex)",
            "pSize": "\(pSize)",
            "ATPT_OFCDC_SC_CODE": ATPT_OFCDC_SC_CODE,
            "SD_SCHUL_CODE": SD_SCHUL_CODE,
            "AY": AY,
            "SEM": SEM,
            "ALL_TI_YMD": ALL_TI_YMD,
            "SCHUL_CRSE_SC_NM": SCHUL_CRSE_SC_NM,
            "GRADE": GRADE,
            "CLRM_NM": CLRM_NM,
            "CLASS_NM": CLASS_NM,
            "PERIO": PERIO,
            "TI_FROM_YMD": TI_FROM_YMD,
            "TI_TO_YMD": TI_TO_YMD
        ]
        .reduce(into: [URLQueryItem]()) { partialResult, dict in
            guard let value = dict.value else { return }
            let item = URLQueryItem(name: dict.key, value: value)
            partialResult.append(item)
        }

        neisRequest(key: "spsTimetable", parameters: parameters, completion: completion)
    }
}
