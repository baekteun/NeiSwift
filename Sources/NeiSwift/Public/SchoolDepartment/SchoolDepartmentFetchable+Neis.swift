import Combine
import Foundation

public extension SchoolDepartmentFetchable where Self: NeisRequestable {
    func fetchSchoolDepartmentList(
        key: String,
        pIndex: Int,
        pSize: Int,
        ATPT_OFCDC_SC_CODE: String,
        SD_SCHUL_CODE: String?,
        DGHT_CRSE_SC_NM: String?,
        ORD_SC_NM: String?,
        completion: @escaping (Result<[SchoolDepartmentResponse], Error>) -> Void
    ) {
        let parameters: [URLQueryItem] = [
            "KEY": key,
            "Type": "json",
            "pIndex": "\(pIndex)",
            "pSize": "\(pSize)",
            "ATPT_OFCDC_SC_CODE": ATPT_OFCDC_SC_CODE,
            "SD_SCHUL_CODE": SD_SCHUL_CODE,
            "DGHT_CRSE_SC_NM": DGHT_CRSE_SC_NM,
            "ORD_SC_NM": ORD_SC_NM
        ]
        .reduce(into: [URLQueryItem]()) { partialResult, dict in
            guard let value = dict.value else { return }
            let item = URLQueryItem(name: dict.key, value: value)
            partialResult.append(item)
        }

        neisRequest(key: "schoolMajorinfo", parameters: parameters, completion: completion)
    }
}
