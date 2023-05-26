import Combine
import Foundation

public protocol TimeTableClassRoomInfoFetchable {
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
        pIndex: Int,
        pSize: Int,
        ATPT_OFCDC_SC_CODE: String,
        SD_SCHUL_CODE: String,
        AY: String?,
        GRADE: String?,
        SEM: String?,
        SCHUL_CRSE_SC_NM: String?,
        DGHT_CRSE_SC_NM: String?,
        ORD_SC_NM: String?,
        DDDEP_NM: String?,
        completion: @escaping (Result<[TimeTableClassRoomInfoResponse], Error>) -> Void
    )
}
