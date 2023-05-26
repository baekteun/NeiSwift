import Combine
import NeiSwift

@available(iOS 13.0, tvOS 13.0, macOS 10.5, watchOS 6.0, *)
public extension CombineTimeTableClassRoomInfoFetchable {
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
     
     - Returns: `AnyPublisher<[TimeTableClassRoomInfoResponse], Error>`
     */
    func fetchTimeTableClassRoomPublisher(
        key: String,
        ATPT_OFCDC_SC_CODE: String,
        SD_SCHUL_CODE: String
    ) -> AnyPublisher<[TimeTableClassRoomInfoResponse], Error> {
        self.fetchTimeTableClassRoomPublisher(
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
            DDDEP_NM: nil
        )
    }

    func fetchTimeTableClassRoomPublisher(
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
        DDDEP_NM: String? = nil
    ) -> AnyPublisher<[TimeTableClassRoomInfoResponse], Error> {
        self.fetchTimeTableClassRoomPublisher(
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
            DDDEP_NM: DDDEP_NM
        )
    }
}
