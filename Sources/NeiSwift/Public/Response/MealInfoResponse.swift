import Foundation

public struct MealInfoResponse: Codable {
    /// 시도교육청코드
    public let ATPT_OFCDC_SC_CODE: String
    /// 시도교육청명
    public let ATPT_OFCDC_SC_NM: String
    /// 표준학교코드
    public let SD_SCHUL_CODE: String
    /// 학교명
    public let SCHUL_NM: String
    /// 식사코드
    public let MMEAL_SC_CODE: String
    /// 식사명
    public let MMEAL_SC_NM: String
    /// 급식일자
    public let MLSV_YMD: String
    /// 급식인원수
    public let MLSV_FGR: String
    /// 요리명
    public let DDISH_NM: String
    /// 원산지정보
    public let ORPLC_INFO: String
    /// 칼로리정보
    public let CAL_INFO: String
    /// 영양정보
    public let NTR_INFO: String
    /// 급식시작일자
    public let MLSV_FROM_YMD: String
    /// 급식종료일자
    public let MLSV_TO_YMD: String
}
