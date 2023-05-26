import NeiSwift

@available(iOS 13.0, tvOS 13.0, macOS 10.5, watchOS 6.0, *)
public extension AsyncSchoolInfoFetchable where Self: NeisRequestable {
    func fetchSchoolList(
        key: String,
        pIndex: Int,
        pSize: Int,
        ATPT_OFCDC_SC_CODE: String?,
        SD_SCHUL_CODE: String?,
        SCHUL_NM: String?,
        SCHUL_KND_SC_NM: String?,
        LCTN_SC_NM: String?,
        FOND_SC_NM: String?
    ) async throws -> [SchoolInfoResponse] {
        try await withCheckedThrowingContinuation { continuation in
            self.fetchSchoolList(
                key: key,
                pIndex: pIndex,
                pSize: pSize,
                ATPT_OFCDC_SC_CODE: ATPT_OFCDC_SC_CODE,
                SD_SCHUL_CODE: SD_SCHUL_CODE,
                SCHUL_NM: SCHUL_NM,
                SCHUL_KND_SC_NM: SCHUL_KND_SC_NM,
                LCTN_SC_NM: LCTN_SC_NM,
                FOND_SC_NM: FOND_SC_NM,
                completion: continuation.resume(with:)
            )
        }
    }
}
