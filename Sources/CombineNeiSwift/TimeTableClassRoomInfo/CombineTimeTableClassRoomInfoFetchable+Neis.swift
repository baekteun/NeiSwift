import Combine
import NeiSwift

@available(iOS 13.0, tvOS 13.0, macOS 10.5, watchOS 6.0, *)
public extension CombineTimeTableClassRoomInfoFetchable where Self: NeisRequestable {
    func fetchTimeTableClassRoomPublisher(
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
        DDDEP_NM: String?
    ) -> AnyPublisher<[TimeTableClassRoomInfoResponse], Error> {
        Deferred {
            Future { fullfill in
                self.fetchTimeTableClassRoom(
                    key: key,
                    pIndex: pIndex,
                    pSize: pSize,
                    ATPT_OFCDC_SC_CODE: ATPT_OFCDC_SC_CODE,
                    SD_SCHUL_CODE: SD_SCHUL_CODE,
                    AY: AY,
                    GRADE: GRADE,
                    SEM: SEM,
                    SCHUL_CRSE_SC_NM: SCHUL_CRSE_SC_NM,
                    DGHT_CRSE_SC_NM: DGHT_CRSE_SC_NM,
                    ORD_SC_NM: ORD_SC_NM,
                    DDDEP_NM: DDDEP_NM,
                    completion: fullfill
                )
            }
        }
        .eraseToAnyPublisher()
    }
}
