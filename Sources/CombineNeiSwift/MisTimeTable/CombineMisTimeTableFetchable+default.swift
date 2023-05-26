import Combine
import NeiSwift

@available(iOS 13.0, tvOS 13.0, macOS 10.5, watchOS 6.0, *)
public extension CombineMisTimeTableFetchable {
    /**
     중학교 학년도, 학교, 학기, 학년, 반, 교시별 시간표 수업내용을 확인할 수 있는 현황입니다.
     
     - Parameters:
        - key: 인증키
        - pIndex: 페이지 위치
        - pSize: 페이지 당 신청 숫자
        - ATPT_OFCDC_SC_CODE: 시도교육청코드
        - SD_SCHUL_CODE: 표준학교코드
        - AY: (Optional) 학년도
        - SEM: (Optional) 학기
        - ALL_TI_YMD: (Optional) 시간표일자
        - GRADE: (Optional) 학년
        - CLASS_NM: (Optional) 반명
        - PERIO: (Optional) 교시
        - TI_FROM_YMD: (Optional) 시간표시작일자
        - TI_TO_YMD: (Optional) 시간표종료일자
    
     - Returns: `AnyPublisher<[MisTimeTableResponse], Error>`
     */
    func fetchMisTimeTablePublisher(
        key: String,
        ATPT_OFCDC_SC_CODE: String,
        SD_SCHUL_CODE: String
    ) -> AnyPublisher<[MisTimeTableResponse], Error> {
        self.fetchMisTimeTablePublisher(
            key: key,
            pIndex: 1,
            pSize: 100,
            ATPT_OFCDC_SC_CODE: ATPT_OFCDC_SC_CODE,
            SD_SCHUL_CODE: SD_SCHUL_CODE,
            AY: nil,
            SEM: nil,
            ALL_TI_YMD: nil,
            GRADE: nil,
            CLASS_NM: nil,
            PERIO: nil,
            TI_FROM_YMD: nil,
            TI_TO_YMD: nil
        )
    }

    func fetchMisTimeTablePublisher(
        key: String,
        pIndex: Int = 1,
        pSize: Int = 100,
        ATPT_OFCDC_SC_CODE: String,
        SD_SCHUL_CODE: String,
        AY: String? = nil,
        SEM: String? = nil,
        ALL_TI_YMD: String? = nil,
        GRADE: String? = nil,
        CLASS_NM: String? = nil,
        PERIO: String? = nil,
        TI_FROM_YMD: String? = nil,
        TI_TO_YMD: String? = nil
    ) -> AnyPublisher<[MisTimeTableResponse], Error> {
        self.fetchMisTimeTablePublisher(
            key: key,
            pIndex: pIndex,
            pSize: pSize,
            ATPT_OFCDC_SC_CODE: ATPT_OFCDC_SC_CODE,
            SD_SCHUL_CODE: SD_SCHUL_CODE,
            AY: AY,
            SEM: SEM,
            ALL_TI_YMD: ALL_TI_YMD,
            GRADE: GRADE,
            CLASS_NM: CLASS_NM,
            PERIO: PERIO,
            TI_FROM_YMD: TI_FROM_YMD,
            TI_TO_YMD: TI_TO_YMD
        )
    }
}
