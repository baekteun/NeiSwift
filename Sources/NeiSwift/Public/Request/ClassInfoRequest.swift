import Foundation

public struct ClassInfoRequest: Encodable, DictionaryConvertable {
    public let key: String
    public let pIndex: Int
    public let pSize: Int
    public let ATPT_OFCDC_SC_CODE: String
    public let SD_SCHUL_CODE: String
    public let AY: String?
    public let GRADE: String?
    public let DGHT_CRSE_SC_NM: String?
    public let SCHUL_CRSE_SC_NM: String?
    public let ORD_SC_NM: String?
    public let DDDEP_NM: String?

    public init(
        key: String,
        pIndex: Int = 1,
        pSize: Int = 100,
        ATPT_OFCDC_SC_CODE: String,
        SD_SCHUL_CODE: String,
        AY: String? = nil,
        GRADE: String? = nil,
        DGHT_CRSE_SC_NM: String? = nil,
        SCHUL_CRSE_SC_NM: String? = nil,
        ORD_SC_NM: String? = nil,
        DDDEP_NM: String? = nil
    ) {
        self.key = key
        self.pIndex = pIndex
        self.pSize = pSize
        self.ATPT_OFCDC_SC_CODE = ATPT_OFCDC_SC_CODE
        self.SD_SCHUL_CODE = SD_SCHUL_CODE
        self.AY = AY
        self.GRADE = GRADE
        self.DGHT_CRSE_SC_NM = DGHT_CRSE_SC_NM
        self.SCHUL_CRSE_SC_NM = SCHUL_CRSE_SC_NM
        self.ORD_SC_NM = ORD_SC_NM
        self.DDDEP_NM = DDDEP_NM
    }
}
