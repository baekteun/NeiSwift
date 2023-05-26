import Combine
import Foundation

public extension SchulAflcoinfoFetchable {
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
        ATPT_OFCDC_SC_CODE: String,
        completion: @escaping (Result<[SchulAflcoinfoResponse], Error>) -> Void
    ) {
        self.fetchSchulAflcoinfoList(
            key: key,
            pIndex: 1,
            pSize: 100,
            ATPT_OFCDC_SC_CODE: ATPT_OFCDC_SC_CODE,
            SD_SCHUL_CODE: nil,
            DGHT_CRSE_SC_NM: nil,
            completion: completion
        )
    }

    func fetchSchulAflcoinfoList(
        key: String,
        pIndex: Int = 1,
        pSize: Int = 100,
        ATPT_OFCDC_SC_CODE: String, /// 시도교육청코드
        SD_SCHUL_CODE: String? = nil, /// 표준학교코드
        DGHT_CRSE_SC_NM: String? = nil, /// 주야과정명
        completion: @escaping (Result<[SchulAflcoinfoResponse], Error>) -> Void
    ) {
        self.fetchSchulAflcoinfoList(
            key: key,
            pIndex: pIndex,
            pSize: pSize,
            ATPT_OFCDC_SC_CODE: ATPT_OFCDC_SC_CODE,
            SD_SCHUL_CODE: SD_SCHUL_CODE,
            DGHT_CRSE_SC_NM: DGHT_CRSE_SC_NM,
            completion: completion
        )
    }
}
