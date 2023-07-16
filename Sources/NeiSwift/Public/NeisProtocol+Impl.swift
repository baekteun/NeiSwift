import Foundation

public extension NeisProtocol where Self: NeisRequestable {
    func fetchAcaInsTiList(
        request: AcaInsTiInfoRequest,
        completion: @escaping (Result<[AcaInsTiInfoResponse], Error>) -> Void
    ) {
        let parameters = request.toDictionary().buildParameters()
        neisRequest(key: "acaInsTiInfo", parameters: parameters, completion: completion)
    }

    func fetchClassInfo(
        request: ClassInfoRequest,
        completion: @escaping (Result<[ClassInfoResponse], Error>) -> Void
    ) {
        let parameters = request.toDictionary().buildParameters()
        neisRequest(key: "classInfo", parameters: parameters, completion: completion)
    }

    func fetchElsTimeTable(
        request: ElsTimeTableRequest,
        completion: @escaping (Result<[ElsTimeTableResponse], Error>) -> Void
    ) {
        let parameters = request.toDictionary().buildParameters()
        neisRequest(key: "elsTimetable", parameters: parameters, completion: completion)
    }

    func fetchHisTimeTable(
        request: HisTimeTableRequest,
        completion: @escaping (Result<[HisTimeTableResponse], Error>) -> Void
    ) {
        let parameters = request.toDictionary().buildParameters()
        neisRequest(key: "hisTimetable", parameters: parameters, completion: completion)
    }

    func fetchMealInfo(
        request: MealInfoRequest,
        completion: @escaping (Result<[MealInfoResponse], Error>) -> Void
    ) {
        let parameters = request.toDictionary().buildParameters()
        neisRequest(key: "mealServiceDietInfo", parameters: parameters, completion: completion)
    }

    func fetchMisTimeTable(
        request: MisTimeTableRequest,
        completion: @escaping (Result<[MisTimeTableResponse], Error>) -> Void
    ) {
        let parameters = request.toDictionary().buildParameters()
        neisRequest(key: "misTimetable", parameters: parameters, completion: completion)
    }

    func fetchSchoolDepartmentList(
        request: SchoolDepartmentRequest,
        completion: @escaping (Result<[SchoolDepartmentResponse], Error>) -> Void
    ) {
        let parameters = request.toDictionary().buildParameters()
        neisRequest(key: "schoolMajorinfo", parameters: parameters, completion: completion)
    }

    func fetchSchoolList(
        request: SchoolInfoRequest,
        completion: @escaping (Result<[SchoolInfoResponse], Error>) -> Void
    ) {
        let parameters = request.toDictionary().buildParameters()
        neisRequest(key: "schoolInfo", parameters: parameters, completion: completion)
    }

    func fetchSchulAflcoinfoList(
        request: SchulAflcoinfoRequest,
        completion: @escaping (Result<[SchulAflcoinfoResponse], Error>) -> Void
    ) {
        let parameters = request.toDictionary().buildParameters()
        neisRequest(key: "schulAflcoinfo", parameters: parameters, completion: completion)
    }

    func fetchSpsTimeTable(
        request: SpsTimeTableRequest,
        completion: @escaping (Result<[SpsTimeTableResponse], Error>) -> Void
    ) {
        let parameters = request.toDictionary().buildParameters()
        neisRequest(key: "spsTimetable", parameters: parameters, completion: completion)
    }

    func fetchTimeTableClassRoom(
        request: TimeTableClassRoomInfoRequest,
        completion: @escaping (Result<[TimeTableClassRoomInfoResponse], Error>) -> Void
    ) {
        let parameters = request.toDictionary().buildParameters()
        neisRequest(key: "tiClrminfo", parameters: parameters, completion: completion)
    }
}

private extension Dictionary where Key == String, Value == Any {
    func buildParameters() -> [URLQueryItem] {
        var parameters = self.reduce(into: [URLQueryItem]()) { partialResult, dict in
            guard let value = dict.value as? String else { return }
            partialResult.append(URLQueryItem(name: dict.key, value: value))
        }
        parameters.append(
            URLQueryItem(name: "Type", value: "json")
        )
        return parameters
    }
}
