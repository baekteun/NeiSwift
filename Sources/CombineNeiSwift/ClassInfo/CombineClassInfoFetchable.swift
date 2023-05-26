import Combine
import NeiSwift

@available(iOS 13.0, tvOS 13.0, macOS 10.5, watchOS 6.0, *)
public protocol CombineClassInfoFetchable: ClassInfoFetchable {
    /**
     학교명 등의 검색 조건을 선택하여 반정보를 검색할 수 있습니다.
     
     - Parameters:
        - key: 인증키
        - pIndex: 페이지 위치
        - pSize: 페이지 당 신청 숫자
        - ATPT_OFCDC_SC_CODE: 시도교육청코드
        - SD_SCHUL_CODE: 표준학교코드
        - AY: (Optional) 학년도
        - GRADE: (Optional) 학년
        - DGHT_CRSE_SC_NM: (Optional) 주야과정명
        - SCHUL_CRSE_SC_NM: (Optional) 학교과정명
        - ORD_SC_NM: (Optional) 계열명
        - DDDEP_NM: (Optional) 학과명
        
     - Returns: `AnyPublisher<[ClassInfoResponse], Error>`
     */
    func fetchClassInfoPublisher(
        key: String,
        pIndex: Int,
        pSize: Int,
        ATPT_OFCDC_SC_CODE: String,
        SD_SCHUL_CODE: String,
        AY: String?,
        GRADE: String?,
        DGHT_CRSE_SC_NM: String?,
        SCHUL_CRSE_SC_NM: String?,
        ORD_SC_NM: String?,
        DDDEP_NM: String?
    ) -> AnyPublisher<[ClassInfoResponse], Error>
}
