import Combine
import NeiSwift

@available(iOS 13.0, tvOS 13.0, macOS 10.5, watchOS 6.0, *)
public extension CombineSpsTimeTableFetchable where Self: NeisRequestable {
    func fetchSpsTimeTablePublisher(
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
        TI_TO_YMD: String?
    ) -> AnyPublisher<[SpsTimeTableResponse], Error> {
        Deferred {
            Future { fullfill in
                self.fetchSpsTimeTable(
                    key: key,
                    pIndex: pIndex,
                    pSize: pSize,
                    ATPT_OFCDC_SC_CODE: ATPT_OFCDC_SC_CODE,
                    SD_SCHUL_CODE: SD_SCHUL_CODE,
                    AY: AY,
                    SEM: SEM,
                    ALL_TI_YMD: ALL_TI_YMD,
                    SCHUL_CRSE_SC_NM: SCHUL_CRSE_SC_NM,
                    GRADE: GRADE,
                    CLRM_NM: CLRM_NM,
                    CLASS_NM: CLASS_NM,
                    PERIO: PERIO,
                    TI_FROM_YMD: TI_FROM_YMD,
                    TI_TO_YMD: TI_TO_YMD,
                    completion: fullfill
                )
            }
        }
        .eraseToAnyPublisher()
    }
}
