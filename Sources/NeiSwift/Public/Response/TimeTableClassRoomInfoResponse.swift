import Foundation

public struct TimeTableClassRoomInfoResponse: Codable {
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
    /// 학년
    public let GRADE: String
    /// 학기
    public let SEM: String
    /// 학교과정명
    public let SCHUL_CRSE_SC_NM: String
    /// 주야과정명
    public let DGHT_CRSE_SC_NM: String
    /// 계열명
    public let ORD_SC_NM: String
    /// 학과명
    public let DDDEP_NM: String
    /// 강의실명
    public let CLRM_NM: String
    /// 수정일
    public let LOAD_DTM: String
}
