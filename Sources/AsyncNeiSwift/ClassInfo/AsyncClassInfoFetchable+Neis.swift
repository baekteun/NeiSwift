import NeiSwift

@available(iOS 13.0, tvOS 13.0, macOS 10.5, watchOS 6.0, *)
public extension AsyncClassInfoFetchable where Self: NeisRequestable {
    func fetchClassInfo(
        key: String,
        pIndex: Int,
        pSize: Int,
        ATPT_OFCDC_SC_CODE: String,
        SD_SCHUL_CODE: String,
        AY: String?,
        GRADE: String?,
        DGHT_CRSE_SC_NM: String?,
        SCHUL_CRSE_SC_NM: String?,
        ORD_SC_NM: String?,
        DDDEP_NM: String?
    ) async throws -> [ClassInfoResponse] {
        try await withCheckedThrowingContinuation { continuation in
            self.fetchClassInfo(
                key: key,
                pIndex: pIndex,
                pSize: pSize,
                ATPT_OFCDC_SC_CODE: ATPT_OFCDC_SC_CODE,
                SD_SCHUL_CODE: SD_SCHUL_CODE,
                AY: AY,
                GRADE: GRADE,
                DGHT_CRSE_SC_NM: DGHT_CRSE_SC_NM,
                SCHUL_CRSE_SC_NM: SCHUL_CRSE_SC_NM,
                ORD_SC_NM: ORD_SC_NM,
                DDDEP_NM: DDDEP_NM,
                completion: continuation.resume(with:)
            )
        }
    }
}
