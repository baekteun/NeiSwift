import Combine
import Foundation

public extension AcaInsTiInfoFetchable {
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
        key: String,
        ATPT_OFCDC_SC_CODE: String,
        completion: @escaping (Result<[AcaInsTiInfoResponse], Error>) -> Void
    ) {
        self.fetchAcaInsTiList(
            key: key,
            pIndex: 1,
            pSize: 100,
            ATPT_OFCDC_SC_CODE: ATPT_OFCDC_SC_CODE,
            ADMST_ZONE_NM: nil,
            ACA_ASNUM: nil,
            ACA_NM: nil,
            REALM_SC_NM: nil,
            LE_ORD_NM: nil,
            LE_CRSE_NM: nil,
            completion: completion
        )
    }

    func fetchAcaInsTiList(
        key: String,
        pIndex: Int = 1,
        pSize: Int = 100,
        ATPT_OFCDC_SC_CODE: String,
        ADMST_ZONE_NM: String? = nil,
        ACA_ASNUM: String? = nil,
        ACA_NM: String? = nil,
        REALM_SC_NM: String? = nil,
        LE_ORD_NM: String? = nil,
        LE_CRSE_NM: String? = nil,
        completion: @escaping (Result<[AcaInsTiInfoResponse], Error>) -> Void
    ) {
        self.fetchAcaInsTiList(
            key: key,
            pIndex: pIndex,
            pSize: pSize,
            ATPT_OFCDC_SC_CODE: ATPT_OFCDC_SC_CODE,
            ADMST_ZONE_NM: ADMST_ZONE_NM,
            ACA_ASNUM: ACA_ASNUM,
            ACA_NM: ACA_NM,
            REALM_SC_NM: REALM_SC_NM,
            LE_ORD_NM: LE_ORD_NM,
            LE_CRSE_NM: LE_CRSE_NM,
            completion: completion
        )
    }
}
