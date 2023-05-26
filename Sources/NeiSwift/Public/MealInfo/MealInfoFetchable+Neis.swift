import Combine
import Foundation

public extension MealInfoFetchable where Self: NeisRequestable {
    func fetchMealInfo(
        key: String,
        pIndex: Int,
        pSize: Int,
        ATPT_OFCDC_SC_CODE: String,
        SD_SCHUL_CODE: String,
        MMEAL_SC_CODE: String?,
        MLSV_YMD: String?,
        MLSV_FROM_YMD: String?,
        MLSV_TO_YMD: String?,
        completion: @escaping (Result<[MealInfoResponse
        ], Error>) -> Void
    ) {
        let parameters: [URLQueryItem] = [
            "KEY": key,
            "Type": "json",
            "pIndex": "\(pIndex)",
            "pSize": "\(pSize)",
            "ATPT_OFCDC_SC_CODE": ATPT_OFCDC_SC_CODE,
            "SD_SCHUL_CODE": SD_SCHUL_CODE,
            "MMEAL_SC_CODE": MMEAL_SC_CODE,
            "MLSV_YMD": MLSV_YMD,
            "MLSV_FROM_YMD": MLSV_FROM_YMD,
            "MLSV_TO_YMD": MLSV_TO_YMD
        ]
        .reduce(into: [URLQueryItem]()) { partialResult, dict in
            guard let value = dict.value else { return }
            let item = URLQueryItem(name: dict.key, value: value)
            partialResult.append(item)
        }

        neisRequest(key: "mealServiceDietInfo", parameters: parameters, completion: completion)
    }
}
