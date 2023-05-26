import NeiSwift

@available(iOS 13.0, tvOS 13.0, macOS 10.5, watchOS 6.0, *)
public protocol AsyncElsTimeTableFetchable: ElsTimeTableFetchable {
    /**
     초등학교 학년도, 학교, 학기, 학년, 반, 교시별 시간표 수업내용을 확인할 수 있는 현황입니다
     
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
    
     - Returns: `[ElsTimeTableResponse]`
     */
    func fetchElsTimeTable(
        key: String,
        pIndex: Int,
        pSize: Int,
        ATPT_OFCDC_SC_CODE: String,
        SD_SCHUL_CODE: String,
        AY: String?,
        SEM: String?,
        ALL_TI_YMD: String?,
        GRADE: String?,
        CLASS_NM: String?,
        PERIO: String?,
        TI_FROM_YMD: String?,
        TI_TO_YMD: String?
    ) async throws -> [ElsTimeTableResponse]
}
