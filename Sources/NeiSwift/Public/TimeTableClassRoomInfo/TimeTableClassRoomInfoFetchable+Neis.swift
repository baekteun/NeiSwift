import Combine
import Foundation

public extension TimeTableClassRoomInfoFetchable where Self: NeisRequestable {
    func fetchTimeTableClassRoom(
        key: String,
        pIndex: Int,
        pSize: Int,
        ATPT_OFCDC_SC_CODE: String,
        SD_SCHUL_CODE: String,
        AY: String?,
        GRADE: String?,
        SEM: String?,
        SCHUL_CRSE_SC_NM: String?,
        DGHT_CRSE_SC_NM: String?,
        ORD_SC_NM: String?,
        DDDEP_NM: String?,
        completion: @escaping (Result<[TimeTableClassRoomInfoResponse], Error>) -> Void
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
            "SEM": SEM,
            "SCHUL_CRSE_SC_NM": SCHUL_CRSE_SC_NM,
            "DGHT_CRSE_SC_NM": DGHT_CRSE_SC_NM,
            "ORD_SC_NM": ORD_SC_NM,
            "DDDEP_NM": DDDEP_NM
        ]
        .reduce(into: [URLQueryItem]()) { partialResult, dict in
            guard let value = dict.value else { return }
            let item = URLQueryItem(name: dict.key, value: value)
            partialResult.append(item)
        }

        neisRequest(key: "tiClrminfo", parameters: parameters, completion: completion)
    }
}
