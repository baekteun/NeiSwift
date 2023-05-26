import Combine
import NeiSwift

@available(iOS 13.0, tvOS 13.0, macOS 10.5, watchOS 6.0, *)
public extension CombineMealInfoFetchable where Self: NeisRequestable {
    func fetchMealInfoPublisher(
        key: String,
        pIndex: Int,
        pSize: Int,
        ATPT_OFCDC_SC_CODE: String,
        SD_SCHUL_CODE: String,
        MMEAL_SC_CODE: String?,
        MLSV_YMD: String?,
        MLSV_FROM_YMD: String?,
        MLSV_TO_YMD: String?
    ) -> AnyPublisher<[MealInfoResponse], Error> {
        Deferred {
            Future { fullfill in
                self.fetchMealInfo(
                    key: key,
                    pIndex: pIndex,
                    pSize: pSize,
                    ATPT_OFCDC_SC_CODE: ATPT_OFCDC_SC_CODE,
                    SD_SCHUL_CODE: SD_SCHUL_CODE,
                    MMEAL_SC_CODE: MMEAL_SC_CODE,
                    MLSV_YMD: MLSV_YMD,
                    MLSV_FROM_YMD: MLSV_FROM_YMD,
                    MLSV_TO_YMD: MLSV_TO_YMD,
                    completion: fullfill
                )
            }
        }
        .eraseToAnyPublisher()
    }
}
