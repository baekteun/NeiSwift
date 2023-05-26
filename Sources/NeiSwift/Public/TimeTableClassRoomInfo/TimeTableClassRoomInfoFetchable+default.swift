import Combine
import Foundation

public extension TimeTableClassRoomInfoFetchable {
    /**
     학교명 등의 검색 조건을 선택하여 시간표강의실 정보를 검색 할 수 있습니다.
     
     - Parameters:
        - key: 인증키
        - pIndex: 페이지 번호
        - pSize: 한 페이지 결과 수
        - ATPT_OFCDC_SC_CODE: 시도교육청코드
        - SD_SCHUL_CODE: 학교코드
        - AY: (Optional) 학년도
        - GRADE: (Optional) 학년
        - SEM: (Optional) 학기
        - SCHUL_CRSE_SC_NM: (Optional) 학교종류명
        - DGHT_CRSE_SC_NM: (Optional) 주야과정명
        - ORD_SC_NM: (Optional) 계열명
        - DDDEP_NM: (Optional) 학과명
        - completion: `Result<[TimeTableClassRoomInfoResponse], Error>`를 사용할 수 있는 클로저
     */
    func fetchTimeTableClassRoom(
        key: String,
        ATPT_OFCDC_SC_CODE: String,
        SD_SCHUL_CODE: String,
        completion: @escaping (Result<[TimeTableClassRoomInfoResponse], Error>) -> Void
    ) {
        self.fetchTimeTableClassRoom(
            key: key,
            pIndex: 1,
            pSize: 100,
            ATPT_OFCDC_SC_CODE: ATPT_OFCDC_SC_CODE,
            SD_SCHUL_CODE: SD_SCHUL_CODE,
            AY: nil,
            GRADE: nil,
            SEM: nil,
            SCHUL_CRSE_SC_NM: nil,
            DGHT_CRSE_SC_NM: nil,
            ORD_SC_NM: nil,
            DDDEP_NM: nil,
            completion: completion
        )
    }

    func fetchTimeTableClassRoom(
        key: String,
        pIndex: Int = 1,
        pSize: Int = 100,
        ATPT_OFCDC_SC_CODE: String,
        SD_SCHUL_CODE: String,
        AY: String? = nil,
        GRADE: String? = nil,
        SEM: String? = nil,
        SCHUL_CRSE_SC_NM: String? = nil,
        DGHT_CRSE_SC_NM: String? = nil,
        ORD_SC_NM: String? = nil,
        DDDEP_NM: String? = nil,
        completion: @escaping (Result<[TimeTableClassRoomInfoResponse], Error>) -> Void
    ) {
        self.fetchTimeTableClassRoom(
            key: key,
            pIndex: pIndex,
            pSize: pSize,
            ATPT_OFCDC_SC_CODE: ATPT_OFCDC_SC_CODE,
            SD_SCHUL_CODE: SD_SCHUL_CODE,
            AY: AY,
            GRADE: GRADE,
            SEM: SEM,
            SCHUL_CRSE_SC_NM: SCHUL_CRSE_SC_NM,
            DGHT_CRSE_SC_NM: DGHT_CRSE_SC_NM,
            ORD_SC_NM: ORD_SC_NM,
            DDDEP_NM: DDDEP_NM,
            completion: completion
        )
    }
}
