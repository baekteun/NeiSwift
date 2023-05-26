import Combine
import NeiSwift

@available(iOS 13.0, tvOS 13.0, macOS 10.5, watchOS 6.0, *)
public extension CombineSchulAflcoinfoFetchable where Self: NeisRequestable {
    func fetchSchulAflcoinfoListPublisher(
        key: String,
        pIndex: Int,
        pSize: Int,
        ATPT_OFCDC_SC_CODE: String,
        SD_SCHUL_CODE: String?,
        DGHT_CRSE_SC_NM: String?
    ) -> AnyPublisher<[SchulAflcoinfoResponse], Error> {
        Deferred {
            Future { fullfill in
                self.fetchSchulAflcoinfoList(
                    key: key,
                    pIndex: pIndex,
                    pSize: pSize,
                    ATPT_OFCDC_SC_CODE: ATPT_OFCDC_SC_CODE,
                    SD_SCHUL_CODE: SD_SCHUL_CODE,
                    DGHT_CRSE_SC_NM: DGHT_CRSE_SC_NM,
                    completion: fullfill
                )
            }
        }
        .eraseToAnyPublisher()
    }
}
