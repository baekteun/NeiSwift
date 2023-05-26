import Combine
import Foundation

public extension HisTimeTableFetchable where Self: NeisRequestable {
    func fetchHisTimeTable(
        key: String,
        pIndex: Int,
        pSize: Int,
        ATPT_OFCDC_SC_CODE: String,
        SD_SCHUL_CODE: String,
        AY: String?,
        SEM: String?,
        ALL_TI_YMD: String?,
        GRADE: String?,
        CLASS_NM: String?,
        PERIO: String?,
        TI_FROM_YMD: String?,
        TI_TO_YMD: String?,
        completion: @escaping (Result<[HisTimeTableResponse], Error>) -> Void
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
            "GRADE": GRADE,
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

        neisRequest(key: "hisTimetable", parameters: parameters, completion: completion)
    }
}
