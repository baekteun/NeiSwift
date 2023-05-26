import NeiSwift

@available(iOS 13.0, tvOS 13.0, macOS 10.5, watchOS 6.0, *)
public extension AsyncMealInfoFetchable {
    /**
     학교에서 제공하는 현재년도 급식의 요리명, 원산지정보, 칼로리정보, 영양정보 등의 일자별 현황입니다.
     
     * 요리명에 표시된 번호는 알레르기를 유발할수 있는 식재료입니다 (1.난류, 2.우유, 3.메밀, 4.땅콩, 5.대두, 6.밀, 7.고등어, 8.게, 9.새우, 10.돼지고기, 11.복숭아, 12.토마토, 13.아황산염, 14.호두, 15.닭고기, 16.쇠고기, 17.오징어, 18.조개류(굴,전복,홍합 등)
     
     - Parameters:
        - key: 인증키
        - pIndex: 페이지 위치
        - pSize: 페이지 당 신청 숫자
        - ATPT_OFCDC_SC_CODE: 시도교육청코드
        - SD_SCHUL_CODE: 표준학교코드
        - MMEAL_SC_CODE: (Optional) 식사코드
        - MLSV_YMD: (Optional) 급식일자
        - MLSV_FROM_YMD: (Optional) 급식일자(시작일자)
        - MLSV_TO_YMD: (Optional) 급식일자(종료일자)
        - completion: `Result<[MealInfoResponse], Error>`를 사용할 수 있는 클로저
     */
    func fetchMealInfo(
        key: String,
        ATPT_OFCDC_SC_CODE: String,
        SD_SCHUL_CODE: String
    ) async throws -> [MealInfoResponse] {
        try await self.fetchMealInfo(
            key: key,
            pIndex: 1,
            pSize: 100,
            ATPT_OFCDC_SC_CODE: ATPT_OFCDC_SC_CODE,
            SD_SCHUL_CODE: SD_SCHUL_CODE,
            MMEAL_SC_CODE: nil,
            MLSV_YMD: nil,
            MLSV_FROM_YMD: nil,
            MLSV_TO_YMD: nil
        )
    }

    func fetchMealInfo(
        key: String,
        pIndex: Int = 1,
        pSize: Int = 100,
        ATPT_OFCDC_SC_CODE: String,
        SD_SCHUL_CODE: String,
        MMEAL_SC_CODE: String? = nil,
        MLSV_YMD: String? = nil,
        MLSV_FROM_YMD: String? = nil,
        MLSV_TO_YMD: String? = nil
    ) async throws -> [MealInfoResponse] {
        try await self.fetchMealInfo(
            key: key,
            pIndex: pIndex,
            pSize: pSize,
            ATPT_OFCDC_SC_CODE: ATPT_OFCDC_SC_CODE,
            SD_SCHUL_CODE: SD_SCHUL_CODE,
            MMEAL_SC_CODE: MMEAL_SC_CODE,
            MLSV_YMD: MLSV_YMD,
            MLSV_FROM_YMD: MLSV_FROM_YMD,
            MLSV_TO_YMD: MLSV_TO_YMD
        )
    }
}
