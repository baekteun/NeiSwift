import Foundation

public struct SchoolInfoRequest: Encodable {
    public let key: String
    public let pIndex: Int
    public let pSize: Int
    public let ATPT_OFCDC_SC_CODE: String?
    public let SD_SCHUL_CODE: String?
    public let SCHUL_NM: String?
    public let SCHUL_KND_SC_NM: String?
    public let LCTN_SC_NM: String?
    public let FOND_SC_NM: String?

    public init(
        key: String,
        pIndex: Int = 1,
        pSize: Int = 100,
        ATPT_OFCDC_SC_CODE: String? = nil,
        SD_SCHUL_CODE: String? = nil,
        SCHUL_NM: String? = nil,
        SCHUL_KND_SC_NM: String? = nil,
        LCTN_SC_NM: String? = nil,
        FOND_SC_NM: String? = nil
    ) {
        self.key = key
        self.pIndex = pIndex
        self.pSize = pSize
        self.ATPT_OFCDC_SC_CODE = ATPT_OFCDC_SC_CODE
        self.SD_SCHUL_CODE = SD_SCHUL_CODE
        self.SCHUL_NM = SCHUL_NM
        self.SCHUL_KND_SC_NM = SCHUL_KND_SC_NM
        self.LCTN_SC_NM = LCTN_SC_NM
        self.FOND_SC_NM = FOND_SC_NM
    }
}
