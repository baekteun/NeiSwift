import NeiSwift

@available(iOS 13.0, tvOS 13.0, macOS 10.5, watchOS 6.0, *)
public extension AsyncSpsTimeTableFetchable {
    func fetchSpsTimeTable(
        key: String,
        ATPT_OFCDC_SC_CODE: String,
        SD_SCHUL_CODE: String
    ) async throws -> [SpsTimeTableResponse] {
        try await self.fetchSpsTimeTable(
            key: key,
            pIndex: 1,
            pSize: 100,
            ATPT_OFCDC_SC_CODE: ATPT_OFCDC_SC_CODE,
            SD_SCHUL_CODE: SD_SCHUL_CODE,
            AY: nil,
            SEM: nil,
            ALL_TI_YMD: nil,
            SCHUL_CRSE_SC_NM: nil,
            GRADE: nil,
            CLRM_NM: nil,
            CLASS_NM: nil,
            PERIO: nil,
            TI_FROM_YMD: nil,
            TI_TO_YMD: nil
        )
    }

    func fetchSpsTimeTable(
        key: String,
        pIndex: Int = 1,
        pSize: Int = 100,
        ATPT_OFCDC_SC_CODE: String,
        SD_SCHUL_CODE: String,
        AY: String? = nil,
        SEM: String? = nil,
        ALL_TI_YMD: String? = nil,
        SCHUL_CRSE_SC_NM: String? = nil,
        GRADE: String? = nil,
        CLRM_NM: String? = nil,
        CLASS_NM: String? = nil,
        PERIO: String? = nil,
        TI_FROM_YMD: String? = nil,
        TI_TO_YMD: String? = nil
    ) async throws -> [SpsTimeTableResponse] {
        try await self.fetchSpsTimeTable(
            key: key,
            pIndex: pIndex,
            pSize: pSize,
            ATPT_OFCDC_SC_CODE: ATPT_OFCDC_SC_CODE,
            SD_SCHUL_CODE: SD_SCHUL_CODE,
            AY: AY,
            SEM: SEM,
            ALL_TI_YMD: ALL_TI_YMD,
            SCHUL_CRSE_SC_NM: SCHUL_CRSE_SC_NM,
            GRADE: GRADE,
            CLRM_NM: CLRM_NM,
            CLASS_NM: CLASS_NM,
            PERIO: PERIO,
            TI_FROM_YMD: TI_FROM_YMD,
            TI_TO_YMD: TI_TO_YMD
        )
    }
}
