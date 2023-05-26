import Combine
import NeiSwift

@available(iOS 13.0, tvOS 13.0, macOS 10.5, watchOS 6.0, *)
public protocol CombineAcaInsTiInfoFetchable: AcaInsTiInfoFetchable {
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
        
     - Returns: `AnyPublisher<[AcaInsTiInfoResponse], Error>`
     */
    func fetchAcaInsTiListPublisher(
        key: String,
        pIndex: Int,
        pSize: Int,
        ATPT_OFCDC_SC_CODE: String, /// 시도 교육청 코드
        ADMST_ZONE_NM: String?, /// 행정구역명
        ACA_ASNUM: String?, /// 학원지정번호
        ACA_NM: String?, /// 학원명
        REALM_SC_NM: String?, /// 분야명
        LE_ORD_NM: String?, /// 교습계열명
        LE_CRSE_NM: String? /// 교습과정명
    ) -> AnyPublisher<[AcaInsTiInfoResponse], Error>
}
