import Foundation

public struct SpsTimeTableRequest: Encodable {
    public let key: String
    public let pIndex: Int
    public let pSize: Int
    public let ATPT_OFCDC_SC_CODE: String
    public let SD_SCHUL_CODE: String
    public let AY: String?
    public let SEM: String?
    public let ALL_TI_YMD: String?
    public let SCHUL_CRSE_SC_NM: String?
    public let GRADE: String?
    public let CLRM_NM: String?
    public let CLASS_NM: String?
    public let PERIO: String?
    public let TI_FROM_YMD: String?
    public let TI_TO_YMD: String?

    public init(
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
    ) {
        self.key = key
        self.pIndex = pIndex
        self.pSize = pSize
        self.ATPT_OFCDC_SC_CODE = ATPT_OFCDC_SC_CODE
        self.SD_SCHUL_CODE = SD_SCHUL_CODE
        self.AY = AY
        self.SEM = SEM
        self.ALL_TI_YMD = ALL_TI_YMD
        self.SCHUL_CRSE_SC_NM = SCHUL_CRSE_SC_NM
        self.GRADE = GRADE
        self.CLRM_NM = CLRM_NM
        self.CLASS_NM = CLASS_NM
        self.PERIO = PERIO
        self.TI_FROM_YMD = TI_FROM_YMD
        self.TI_TO_YMD = TI_TO_YMD
    }
}
