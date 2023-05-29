import Foundation

public struct AcaInsTiInfoRequest: Encodable {
    public let key: String
    public let pIndex: Int
    public let pSize: Int
    public let ATPT_OFCDC_SC_CODE: String
    public let ADMST_ZONE_NM: String?
    public let ACA_ASNUM: String?
    public let ACA_NM: String?
    public let REALM_SC_NM: String?
    public let LE_ORD_NM: String?
    public let LE_CRSE_NM: String?

    public init(
        key: String,
        pIndex: Int = 1,
        pSize: Int = 100,
        ATPT_OFCDC_SC_CODE: String,
        ADMST_ZONE_NM: String? = nil,
        ACA_ASNUM: String? = nil,
        ACA_NM: String? = nil,
        REALM_SC_NM: String? = nil,
        LE_ORD_NM: String? = nil,
        LE_CRSE_NM: String? = nil
    ) {
        self.key = key
        self.pIndex = pIndex
        self.pSize = pSize
        self.ATPT_OFCDC_SC_CODE = ATPT_OFCDC_SC_CODE
        self.ADMST_ZONE_NM = ADMST_ZONE_NM
        self.ACA_ASNUM = ACA_ASNUM
        self.ACA_NM = ACA_NM
        self.REALM_SC_NM = REALM_SC_NM
        self.LE_ORD_NM = LE_ORD_NM
        self.LE_CRSE_NM = LE_CRSE_NM
    }
}
