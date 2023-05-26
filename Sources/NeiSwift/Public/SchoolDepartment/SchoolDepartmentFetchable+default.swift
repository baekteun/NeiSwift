import Combine
import Foundation

public extension SchoolDepartmentFetchable {
    /**
     학교별 학과 정보를 조회할 수 있습니다.

     - Parameters:
        - key: 인증키
        - pIndex: 페이지 위치
        - pSize: 페이지 당 신청 숫자
        - ATPT_OFCDC_SC_CODE: 시도교육청코드
        - SD_SCHUL_CODE: (Optional) 표준학교코드
        - DGHT_CRSE_SC_NM: (Optional) 주야과정명
        - ORD_SC_NM: (Optional) 계열명
        - completion: `Result<[SchoolDepartmentResponse], Error>`를 사용할 수 있는 클로저
     */
    func fetchSchoolDepartmentList(
        key: String,
        ATPT_OFCDC_SC_CODE: String,
        completion: @escaping (Result<[SchoolDepartmentResponse], Error>) -> Void
    ) {
        self.fetchSchoolDepartmentList(
            key: key,
            pIndex: 1,
            pSize: 100,
            ATPT_OFCDC_SC_CODE: ATPT_OFCDC_SC_CODE,
            SD_SCHUL_CODE: nil,
            DGHT_CRSE_SC_NM: nil,
            ORD_SC_NM: nil,
            completion: completion
        )
    }

    func fetchSchoolDepartmentList(
        key: String,
        pIndex: Int = 1,
        pSize: Int = 100,
        ATPT_OFCDC_SC_CODE: String, /// 시도 교육청 코드
        SD_SCHUL_CODE: String? = nil, /// 표준 학교 코드
        DGHT_CRSE_SC_NM: String? = nil, /// 주야과정명
        ORD_SC_NM: String? = nil, /// 계열명
        completion: @escaping (Result<[SchoolDepartmentResponse], Error>) -> Void
    ) {
        self.fetchSchoolDepartmentList(
            key: key,
            pIndex: pIndex,
            pSize: pSize,
            ATPT_OFCDC_SC_CODE: ATPT_OFCDC_SC_CODE,
            SD_SCHUL_CODE: SD_SCHUL_CODE,
            DGHT_CRSE_SC_NM: DGHT_CRSE_SC_NM,
            ORD_SC_NM: ORD_SC_NM,
            completion: completion
        )
    }
}
