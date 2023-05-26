import NeiSwift

@available(iOS 13.0, tvOS 13.0, macOS 10.5, watchOS 6.0, *)
public extension AsyncSchoolDepartmentFetchable where Self: NeisRequestable {
    func fetchSchoolDepartmentList(
        key: String,
        pIndex: Int,
        pSize: Int,
        ATPT_OFCDC_SC_CODE: String,
        SD_SCHUL_CODE: String?,
        DGHT_CRSE_SC_NM: String?,
        ORD_SC_NM: String?
    ) async throws -> [SchoolDepartmentResponse] {
        try await withCheckedThrowingContinuation { continuation in
            fetchSchoolDepartmentList(
                key: key,
                pIndex: pIndex,
                pSize: pSize,
                ATPT_OFCDC_SC_CODE: ATPT_OFCDC_SC_CODE,
                SD_SCHUL_CODE: SD_SCHUL_CODE,
                DGHT_CRSE_SC_NM: DGHT_CRSE_SC_NM,
                ORD_SC_NM: ORD_SC_NM,
                completion: continuation.resume(with:)
            )
        }
    }
}
