import Combine
import Foundation

public extension AcaInsTiInfoFetchable where Self: NeisRequestable {
    func fetchAcaInsTiList(
        key: String,
        pIndex: Int,
        pSize: Int,
        ATPT_OFCDC_SC_CODE: String,
        ADMST_ZONE_NM: String?,
        ACA_ASNUM: String?,
        ACA_NM: String?,
        REALM_SC_NM: String?,
        LE_ORD_NM: String?,
        LE_CRSE_NM: String?,
        completion: @escaping (Result<[AcaInsTiInfoResponse], Error>) -> Void
    ) {
        let parameters: [URLQueryItem] = [
            "KEY": key,
            "Type": "json",
            "pIndex": "\(pIndex)",
            "pSize": "\(pSize)",
            "ATPT_OFCDC_SC_CODE": ATPT_OFCDC_SC_CODE,
            "ADMST_ZONE_NM": ADMST_ZONE_NM,
            "ACA_ASNUM": ACA_ASNUM,
            "ACA_NM": ACA_NM,
            "REALM_SC_NM": REALM_SC_NM,
            "LE_ORD_NM": LE_ORD_NM,
            "LE_CRSE_NM": LE_CRSE_NM
        ]
        .reduce(into: [URLQueryItem]()) { partialResult, dict in
            guard let value = dict.value else { return }
            let item = URLQueryItem(name: dict.key, value: value)
            partialResult.append(item)
        }

        neisRequest(key: "acaInsTiInfo", parameters: parameters, completion: completion)
    }
}
