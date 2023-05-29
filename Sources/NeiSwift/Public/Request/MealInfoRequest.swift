import Foundation

public struct MealInfoRequest: Encodable, DictionaryConvertable {
    public let key: String
    public let pIndex: Int
    public let pSize: Int
    public let ATPT_OFCDC_SC_CODE: String
    public let SD_SCHUL_CODE: String
    public let MMEAL_SC_CODE: String?
    public let MLSV_YMD: String?
    public let MLSV_FROM_YMD: String?
    public let MLSV_TO_YMD: String?

    public init(
        key: String,
        pIndex: Int = 1,
        pSize: Int = 100,
        ATPT_OFCDC_SC_CODE: String,
        SD_SCHUL_CODE: String,
        MMEAL_SC_CODE: String? = nil,
        MLSV_YMD: String? = nil,
        MLSV_FROM_YMD: String? = nil,
        MLSV_TO_YMD: String? = nil
    ) {
        self.key = key
        self.pIndex = pIndex
        self.pSize = pSize
        self.ATPT_OFCDC_SC_CODE = ATPT_OFCDC_SC_CODE
        self.SD_SCHUL_CODE = SD_SCHUL_CODE
        self.MMEAL_SC_CODE = MMEAL_SC_CODE
        self.MLSV_YMD = MLSV_YMD
        self.MLSV_FROM_YMD = MLSV_FROM_YMD
        self.MLSV_TO_YMD = MLSV_TO_YMD
    }
}
