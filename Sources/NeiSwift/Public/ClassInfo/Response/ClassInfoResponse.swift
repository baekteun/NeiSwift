import Foundation

public struct ClassInfoResponse: Codable {
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
    /// 주야과정명
    public let DGHT_CRSE_SC_NM: String
    /// 학교과정명
    public let SCHUL_CRSE_SC_NM: String
    /// 계열명
    public let ORD_SC_NM: String
    /// 학과명
    public let DDDEP_NM: String
    /// 반명
    public let CLASS_NM: String
    /// 수정일
    public let LOAD_DTM: String
}
