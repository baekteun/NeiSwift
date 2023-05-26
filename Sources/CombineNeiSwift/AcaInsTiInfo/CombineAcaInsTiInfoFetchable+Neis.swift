import Combine
import NeiSwift

@available(iOS 13.0, tvOS 13.0, macOS 10.5, watchOS 6.0, *)
public extension CombineAcaInsTiInfoFetchable where Self: NeisRequestable {
    func fetchAcaInsTiListPublisher(
        key: String,
        pIndex: Int,
        pSize: Int,
        ATPT_OFCDC_SC_CODE: String,
        ADMST_ZONE_NM: String?,
        ACA_ASNUM: String?,
        ACA_NM: String?,
        REALM_SC_NM: String?,
        LE_ORD_NM: String?,
        LE_CRSE_NM: String?
    ) -> AnyPublisher<[AcaInsTiInfoResponse], Error> {
        Deferred {
            Future { fullfill in
                self.fetchAcaInsTiList(
                    key: key,
                    pIndex: pIndex,
                    pSize: pSize,
                    ATPT_OFCDC_SC_CODE: ATPT_OFCDC_SC_CODE,
                    ADMST_ZONE_NM: ADMST_ZONE_NM,
                    ACA_ASNUM: ACA_ASNUM,
                    ACA_NM: ACA_NM,
                    REALM_SC_NM: REALM_SC_NM,
                    LE_ORD_NM: LE_ORD_NM,
                    LE_CRSE_NM: LE_CRSE_NM,
                    completion: fullfill
                )
            }
        }
        .eraseToAnyPublisher()
    }
}
