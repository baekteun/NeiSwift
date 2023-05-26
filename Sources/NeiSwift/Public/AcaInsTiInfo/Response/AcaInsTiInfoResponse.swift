import Foundation

/// 학교 기본 정보 응답
public struct AcaInsTiInfoResponse: Codable {
    /// 시도 교육청 코드
    public let ATPT_OFCDC_SC_CODE: String
    /// 시도 교육청명
    public let ATPT_OFCDC_SC_NM: String
    /// 행정구역명
    public let ADMST_ZONE_NM: String
    /// 학원교습소명
    public let ACA_INSTI_SC_NM: String?
    /// 학원지정번호
    public let ACA_ASNUM: String?
    /// 학원명
    public let ACA_NM: String?
    /// 개설일자
    public let ESTBL_YMD: String?
    /// 등록일자
    public let REG_YMD: String?
    /// 등록상태명
    public let REG_STTUS_NM: String?
    /// 휴원시작일자
    public let CAA_BEGIN_YMD: String?
    /// 휴원종료일자
    public let CAA_END_YMD: String?
    /// 정원합계
    public let TOFOR_SMTOT: Int?
    /// 일시수용능력인원합계
    public let DTM_RCPTN_ABLTY_NMPR_SMTOT: Int?
    /// 분야명
    public let REALM_SC_NM: String?
    /// 교습계열명
    public let LE_ORD_NM: String?
    /// 교습과정목록명
    public let LE_CRSE_LIST_NM: String?
    /// 교습과정명
    public let LE_CRSE_NM: String?
    /// 인당수강료내용
    public let PSNBY_THCC_CNTNT: String?
    /// 수강료공개여부
    public let THCC_OTHBC_YN: String?
    /// 기숙사학원여부
    public let BRHS_ACA_YN: String?
    /// 도로명우편번호
    public let FA_RDNZC: String?
    /// 도로명주소
    public let FA_RDNMA: String?
    /// 도로명상세주소
    public let FA_RDNDA: String?
    /// 수정일
    public let LOAD_DTM: String
}
