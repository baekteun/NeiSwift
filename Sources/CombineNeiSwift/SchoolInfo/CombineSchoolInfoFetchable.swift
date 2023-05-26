import Combine
import NeiSwift

@available(iOS 13.0, tvOS 13.0, macOS 10.5, watchOS 6.0, *)
public protocol CombineSchoolInfoFetchable: SchoolInfoFetchable {
    /**
     학교 기본정보에 대한 학교명, 소재지, 주소, 전화번호, 홈페이지주소, 남녀공학여부, 주야구분, 개교기념일 등을 확인할 수 있는 현황입니다.
     
     - Parameters:
        - key: 인증키
        - pIndex: 페이지 위치
        - pSize: 페이지 당 신청 숫자
        - ATPT_OFCDC_SC_CODE: (Optional) 시도교육청코드
        - SD_SCHUL_CODE: (Optional) 표준학교코드
        - SCHUL_NM: (Optional) 학교명
        - SCHUL_KND_SC_NM: (Optional) 학교 종류명
        - LCTN_SC_NM: (Optional) 소재지명
        - FOND_SC_NM: (Optional) 설립명

     - Returns: `AnyPublisher<[SchoolInfoResponse], Error>`
     */
    func fetchSchoolListPublisher(
        key: String,
        pIndex: Int,
        pSize: Int,
        ATPT_OFCDC_SC_CODE: String?,
        SD_SCHUL_CODE: String?,
        SCHUL_NM: String?,
        SCHUL_KND_SC_NM: String?,
        LCTN_SC_NM: String?,
        FOND_SC_NM: String?
    ) -> AnyPublisher<[SchoolInfoResponse], Error>
}
