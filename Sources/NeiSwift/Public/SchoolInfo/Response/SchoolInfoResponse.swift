import Foundation

/// 학교 기본 정보 응답
public struct SchoolInfoResponse: Codable {
    /// 시도 교육청 코드
    public let ATPT_OFCDC_SC_CODE: String
    /// 시도 교육청명
    public let ATPT_OFCDC_SC_NM: String
    /// 표준 학교 코드
    public let SD_SCHUL_CODE: String
    /// 학교명
    public let SCHUL_NM: String
    /// 영문학교명
    public let ENG_SCHUL_NM: String?
    /// 학교 종류명
    public let SCHUL_KND_SC_NM: String
    /// 소재지명
    public let LCTN_SC_NM: String?
    /// 관할조직명
    public let JU_ORG_NM: String?
    /// 설립명
    public let FOND_SC_NM: String?
    /// 도로명우편번호
    public let ORG_RDNZC: String?
    /// 도로명주소
    public let ORG_RDNMA: String?
    /// 도로명상세주소
    public let ORG_RDNDA: String?
    /// 전화번호
    public let ORG_TELNO: String?
    /// 홈페이지주소
    public let HMPG_ADRES: String?
    /// 남녀공학구분명
    public let COEDU_SC_NM: String?
    /// 팩스번호
    public let ORG_FAXNO: String?
    /// 고등학교구분명
    public let HS_SC_NM: String?
    /// 산업체특별학급존재여부
    public let INDST_SPECL_CCCCL_EXST_YN: String?
    /// 고등학교일반실업구분명
    public let HS_GNRL_BUSNS_SC_NM: String?
    /// 특수목적고등학교계열명
    public let SPCLY_PURPS_HS_ORD_NM: String?
    /// 입시전후기구분명
    public let ENE_BFE_SEHF_SC_NM: String?
    /// 주야구분명
    public let DGHT_SC_NM: String?
    /// 설립일자
    public let FOND_YMD: String
    /// 개교기념일
    public let FOAS_MEMRD: String
    /// 수정일
    public let LOAD_DTM: String?
}
