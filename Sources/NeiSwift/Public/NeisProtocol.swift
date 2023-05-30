import Foundation

public protocol NeisProtocol {
    /**
     개설되어있는 학원 및 교습소의 학원명, 휴원일자, 등록상태, 정원, 분야, 계열 및 과정등을 확인할 수 있으며 수강료 공개여부에 따라 수강료 내용을 확인할 수 있습니다.

     - Parameters:
        - key: 인증키
        - pIndex: 페이지 위치
        - pSize: 페이지 당 신청 숫자
        - ATPT_OFCDC_SC_CODE: 시도교육청코드
        - ADMST_ZONE_NM: (Optional) 행정구역명
        - ACA_ASNUM: (Optional) 학원지정번호
        - ACA_NM: (Optional) 학원명
        - REALM_SC_NM: (Optional) 분야명
        - LE_ORD_NM: (Optional) 교습계열명
        - LE_CRSE_NM: (Optional) 교습과정명
        - completion: `Result<[AcaInsTiInfoResponse], Error>`를 사용할 수 있는 클로저
     */
    func fetchAcaInsTiList(
        request: AcaInsTiInfoRequest,
        completion: @escaping (Result<[AcaInsTiInfoResponse], Error>) -> Void
    )

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
        - completion: `Result<[ClassInfoResponse], Error>`를 사용할 수 있는 클로저
     */
    func fetchClassInfo(
        request: ClassInfoRequest,
        completion: @escaping (Result<[ClassInfoResponse], Error>) -> Void
    )

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
        - completion: `Result<[ElsTimeTableResponse], Error>`를 사용할 수 있는 클로저
     */
    func fetchElsTimeTable(
        request: ElsTimeTableRequest,
        completion: @escaping (Result<[ElsTimeTableResponse], Error>) -> Void
    )

    /**
     고등학교 학년도, 학교, 계열, 학과, 학기, 학년, 강의실, 교시별 시간표 수업내용을 확인할 수 있는 현황입니다.
     
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
        - completion: `Result<[HisTimeTableResponse], Error>`를 사용할 수 있는 클로저
     */
    func fetchHisTimeTable(
        request: HisTimeTableRequest,
        completion: @escaping (Result<[HisTimeTableResponse], Error>) -> Void
    )

    /**
     학교에서 제공하는 현재년도 급식의 요리명, 원산지정보, 칼로리정보, 영양정보 등의 일자별 현황입니다.
     
     * 요리명에 표시된 번호는 알레르기를 유발할수 있는 식재료입니다 (1.난류, 2.우유, 3.메밀, 4.땅콩, 5.대두, 6.밀, 7.고등어, 8.게, 9.새우, 10.돼지고기, 11.복숭아, 12.토마토, 13.아황산염, 14.호두, 15.닭고기, 16.쇠고기, 17.오징어, 18.조개류(굴,전복,홍합 등))
     
     - Parameters:
        - key: 인증키
        - pIndex: 페이지 위치
        - pSize: 페이지 당 신청 숫자
        - ATPT_OFCDC_SC_CODE: 시도교육청코드
        - SD_SCHUL_CODE: 표준학교코드
        - MMEAL_SC_CODE: (Optional) 식사코드
        - MLSV_YMD: (Optional) 급식일자
        - MLSV_FROM_YMD: (Optional) 급식일자(시작일자)
        - MLSV_TO_YMD: (Optional) 급식일자(종료일자)
        - completion: `Result<[MealInfoResponse], Error>`를 사용할 수 있는 클로저
     */
    func fetchMealInfo(
        request: MealInfoRequest,
        completion: @escaping (Result<[MealInfoResponse], Error>) -> Void
    )

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
        - completion: `Result<[MisTimeTableResponse], Error>`를 사용할 수 있는 클로저
     */
    func fetchMisTimeTable(
        request: MisTimeTableRequest,
        completion: @escaping (Result<[MisTimeTableResponse], Error>) -> Void
    )

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
        request: SchoolDepartmentRequest,
        completion: @escaping (Result<[SchoolDepartmentResponse], Error>) -> Void
    )

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
        request: SchoolInfoRequest,
        completion: @escaping (Result<[SchoolInfoResponse], Error>) -> Void
    )

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
        request: SchulAflcoinfoRequest,
        completion: @escaping (Result<[SchulAflcoinfoResponse], Error>) -> Void
    )

    /**
     특수학교 학년도, 학교, 학기, 학년, 반, 교시별 시간표 수업내용을 확인할 수 있는 현황입니다.

     - Parameters:
        - key: 인증키
        - pIndex: 페이지 위치
        - pSize: 페이지 당 신청 숫자
        - ATPT_OFCDC_SC_CODE: 시도교육청코드
        - SD_SCHUL_CODE: 표준학교코드
        - AY: (Optional) 학년도
        - SEM: (Optional) 학기
        - ALL_TI_YMD: (Optional) 시간표일자
        - SCHUL_CRSE_SC_NM: (Optional) 학교과정명
        - GRADE: (Optional) 학년
        - CLRM_NM: (Optional) 강의실명
        - CLASS_NM: (Optional) 반명
        - PERIO: (Optional) 교시
        - TI_FROM_YMD: (Optional) 시간표시작일자
        - TI_TO_YMD: (Optional) 시간표종료일자
        - completion: `Result<[SpsTimeTableResponse], Error>`를 사용할 수 있는 클로저
     */
    func fetchSpsTimeTable(
        request: SpsTimeTableRequest,
        completion: @escaping (Result<[SpsTimeTableResponse], Error>) -> Void
    )

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
        request: TimeTableClassRoomInfoRequest,
        completion: @escaping (Result<[TimeTableClassRoomInfoResponse], Error>) -> Void
    )
}
