import Foundation

public struct MisTimeTableResponse: Codable {
    /// 시도교육청코드
    public let ATPT_OFCDC_SC_CODE: String
    /// 시도교육청명
    public let ATPT_OFCDC_SC_NM: String
    /// 표준학교코드
    public let SD_SCHUL_CODE: String
    /// 학교명
    public let SCHUL_NM: String
    /// 학년도
    public let AY: String
    /// 학기
    public let SEM: String
    /// 시간표일자
    public let ALL_TI_YMD: String
    /// 학년
    public let GRADE: String
    /// 반명
    public let CLASS_NM: String
    /// 교시
    public let PERIO: String
    /// 수업내용
    public let ITRT_CNTNT: String
    /// 수정일
    public let LOAD_DTM: String
}
