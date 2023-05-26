import Combine
import Foundation

public protocol SchulAflcoinfoFetchable {
    /**
     학교명 등의 검색 조건을 선택하여 학교계열정보를 검색할 수 있습니다.
     
     - Parameters:
        - key: 인증키
        - pIndex: 페이지 위치
        - pSize: 페이지 당 신청 숫자
        - ATPT_OFCDC_SC_CODE: 시도교육청코드
        - SD_SCHUL_CODE: (Optional) 표준학교코드
        - DGHT_CRSE_SC_NM: (Optional) 주야과정명
        - completion: `Result<[SchulAflcoinfoResponse], Error>`를 사용할 수 있는 클로저
     */
    func fetchSchulAflcoinfoList(
        key: String,
        pIndex: Int,
        pSize: Int,
        ATPT_OFCDC_SC_CODE: String,
        SD_SCHUL_CODE: String?,
        DGHT_CRSE_SC_NM: String?,
        completion: @escaping (Result<[SchulAflcoinfoResponse], Error>) -> Void
    )
}
