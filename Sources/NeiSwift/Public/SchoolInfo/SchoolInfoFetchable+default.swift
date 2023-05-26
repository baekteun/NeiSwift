import Combine
import Foundation

public extension SchoolInfoFetchable {
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
        - completion: `Result<[SchoolInfoResponse], Error>`를 사용할 수 있는 클로저
     */
    func fetchSchoolList(
        key: String,
        completion: @escaping (Result<[SchoolInfoResponse], Error>) -> Void
    ) {
        self.fetchSchoolList(
            key: key,
            pIndex: 1,
            pSize: 100,
            ATPT_OFCDC_SC_CODE: nil,
            SD_SCHUL_CODE: nil,
            SCHUL_NM: nil,
            SCHUL_KND_SC_NM: nil,
            LCTN_SC_NM: nil,
            FOND_SC_NM: nil,
            completion: completion
        )
    }

    func fetchSchoolList(
        key: String,
        pIndex: Int = 1,
        pSize: Int = 100,
        ATPT_OFCDC_SC_CODE: String? = nil,
        SD_SCHUL_CODE: String? = nil,
        SCHUL_NM: String? = nil,
        SCHUL_KND_SC_NM: String? = nil,
        LCTN_SC_NM: String? = nil,
        FOND_SC_NM: String? = nil,
        completion: @escaping (Result<[SchoolInfoResponse], Error>) -> Void
    ) {
        self.fetchSchoolList(
            key: key,
            pIndex: pIndex,
            pSize: pSize,
            ATPT_OFCDC_SC_CODE: ATPT_OFCDC_SC_CODE,
            SD_SCHUL_CODE: SD_SCHUL_CODE,
            SCHUL_NM: SCHUL_NM,
            SCHUL_KND_SC_NM: SCHUL_KND_SC_NM,
            LCTN_SC_NM: LCTN_SC_NM,
            FOND_SC_NM: FOND_SC_NM,
            completion: completion
        )
    }
}
