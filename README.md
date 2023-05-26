# NeiSwift

[나이스 교육정보 개방 포털 Neis Open API](https://open.neis.go.kr/portal/data/dataset/searchDatasetPage.do)를 Swift에서 간편하게 사용할 수 있는 라이브러리입니다.

<br>

## Contents
- [NeiSwift](#neiswift)
  - [Contents](#contents)
  - [Requirements](#requirements)
  - [Overview](#overview)
  - [Installation](#installation)
    - [Swift Package Manager](#swift-package-manager)
  - [Usage](#usage)
    - [`fetchAcaInsTiList`](#fetchacainstilist)
    - [`fetchClassInfo`](#fetchclassinfo)
    - [`fetchElsTimeTable`](#fetchelstimetable)
    - [`fetchHisTimeTable`](#fetchhistimetable)
    - [`fetchMealInfo`](#fetchmealinfo)
    - [`fetchMisTimeTable`](#fetchmistimetable)
    - [`fetchSchoolDepartmentList`](#fetchschooldepartmentlist)
    - [`fetchSchoolList`](#fetchschoollist)
    - [`fetchSchulAflcoinfoList`](#fetchschulaflcoinfolist)
    - [`fetchSpsTimeTable`](#fetchspstimetable)
    - [`fetchTimeTableClassRoom`](#fetchtimetableclassroom)

<br>

## Requirements
- iOS 11.0+
- macOS 11.0+
- tvOS 11.0+
- watchOS 4.0+

<br>

## Overview
[Neis Open API](https://open.neis.go.kr/portal/data/dataset/searchDatasetPage.do)를 Swift에서 간편하게 사용할 수 있는 라이브러리입니다.

<br>

## Installation
### Swift Package Manager

Package.swift에 dependencies에 `NeiSwift`를 추가해주세요.

```swift
dependencies: [
    .package(url: "https://github.com/baekteun/NeiSwift.git", .upToNextMajor(from: "1.0.0"))
]
```

<br>

## Usage

모든 요청은 completion closure, Combine, Swift Concurrency를 지원합니다.

### `fetchAcaInsTiList`
개설되어있는 학원 및 교습소의 학원명, 휴원일자, 등록상태, 정원, 분야, 계열 및 과정등을 확인할 수 있으며 수강료 공개여부에 따라 수강료 내용을 확인할 수 있습니다.
[Neis Open API](https://open.neis.go.kr/portal/data/service/selectServicePage.do?page=1&rows=10&sortColumn=&sortDirection=&infId=OPEN15920190423094641415608&infSeq=1)에서 API명세서를 볼 수 있습니다.

```swift
let neis = Neis()
neis.fetchAcaInsTiList(key:...)
```

### `fetchClassInfo`
학교명 등의 검색 조건을 선택하여 반정보를 검색할 수 있습니다.
[Neis Open API](https://open.neis.go.kr/portal/data/service/selectServicePage.do?page=1&rows=10&sortColumn=&sortDirection=&infId=OPEN15320190408174919197546&infSeq=1)에서 API명세서를 볼 수 있습니다.

```swift
let neis = Neis()
neis.fetchClassInfo(key:...)
```

### `fetchElsTimeTable`
초등학교 학년도, 학교, 학기, 학년, 반, 교시별 시간표 수업내용을 확인할 수 있는 현황입니다
[Neis Open API](https://open.neis.go.kr/portal/data/service/selectServicePage.do?page=1&rows=10&sortColumn=&sortDirection=&infId=OPEN15020190408160341416743&infSeq=1)에서 API명세서를 볼 수 있습니다.

```swift
let neis = Neis()
neis.fetchElsTimeTable(key:...)
```

### `fetchHisTimeTable`
고등학교 학년도, 학교, 계열, 학과, 학기, 학년, 강의실, 교시별 시간표 수업내용을 확인할 수 있는 현황입니다.
[Neis Open API](https://open.neis.go.kr/portal/data/service/selectServicePage.do?page=1&rows=10&sortColumn=&sortDirection=&infId=OPEN18620200826103326268120&infSeq=1)에서 API명세서를 볼 수 있습니다.

```swift
let neis = Neis()
neis.fetchHisTimeTable(key:...)
```

### `fetchMealInfo`
학교에서 제공하는 현재년도 급식의 요리명, 원산지정보, 칼로리정보, 영양정보 등의 일자별 현황입니다.
     
* 요리명에 표시된 번호는 알레르기를 유발할수 있는 식재료입니다 (1.난류, 2.우유, 3.메밀, 4.땅콩, 5.대두, 6.밀, 7.고등어, 8.게, 9.새우, 10.돼지고기, 11.복숭아, 12.토마토, 13.아황산염, 14.호두, 15.닭고기, 16.쇠고기, 17.오징어, 18.조개류(굴,전복,홍합 등))

[Neis Open API](https://open.neis.go.kr/portal/data/service/selectServicePage.do?page=1&rows=10&sortColumn=&sortDirection=&infId=OPEN17320190722180924242823&infSeq=1)에서 API명세서를 볼 수 있습니다.

```swift
let neis = Neis()
neis.fetchMealInfo(key:...)
```

### `fetchMisTimeTable`
중학교 학년도, 학교, 학기, 학년, 반, 교시별 시간표 수업내용을 확인할 수 있는 현황입니다.

[Neis Open API](https://open.neis.go.kr/portal/data/service/selectServicePage.do?page=1&rows=10&sortColumn=&sortDirection=&infId=OPEN15120190408165334348844&infSeq=1)에서 API명세서를 볼 수 있습니다.

```swift
let neis = Neis()
neis.fetchMisTimeTable(key:...)
```

### `fetchSchoolDepartmentList`
학교별 학과 정보를 조회할 수 있습니다.

[Neis Open API](https://open.neis.go.kr/portal/data/service/selectServicePage.do?page=1&rows=10&sortColumn=&sortDirection=&infId=OPEN14020190311111456561190&infSeq=1)에서 API명세서를 볼 수 있습니다.

```swift
let neis = Neis()
neis.fetchSchoolDepartmentList(key:...)
```

### `fetchSchoolList`
학교 기본정보에 대한 학교명, 소재지, 주소, 전화번호, 홈페이지주소, 남녀공학여부, 주야구분, 개교기념일 등을 확인할 수 있는 현황입니다.

[Neis Open API](https://open.neis.go.kr/portal/data/service/selectServicePage.do?page=1&rows=10&sortColumn=&sortDirection=&infId=OPEN17020190531110010104913&infSeq=1)에서 API명세서를 볼 수 있습니다.

```swift
let neis = Neis()
neis.fetchSchoolList(key:...)
```

### `fetchSchulAflcoinfoList`
학교명 등의 검색 조건을 선택하여 학교계열정보를 검색할 수 있습니다.

[Neis Open API](https://open.neis.go.kr/portal/data/service/selectServicePage.do?page=1&rows=10&sortColumn=&sortDirection=&infId=OPEN13920190311110530306647&infSeq=1)에서 API명세서를 볼 수 있습니다.

```swift
let neis = Neis()
neis.fetchSchulAflcoinfoList(key:...)
```

### `fetchSpsTimeTable`
특수학교 학년도, 학교, 학기, 학년, 반, 교시별 시간표 수업내용을 확인할 수 있는 현황입니다.

[Neis Open API](https://open.neis.go.kr/portal/data/service/selectServicePage.do?page=2&rows=10&sortColumn=&sortDirection=&infId=OPEN18520200826093359591792&infSeq=1)에서 API명세서를 볼 수 있습니다.

```swift
let neis = Neis()
neis.fetchSpsTimeTable(key:...)
```

### `fetchTimeTableClassRoom`
학교명 등의 검색 조건을 선택하여 시간표강의실 정보를 검색 할 수 있습니다.

[Neis Open API](https://open.neis.go.kr/portal/data/service/selectServicePage.do?page=2&rows=10&sortColumn=&sortDirection=&infId=OPEN14120190311112536362172&infSeq=1)에서 API명세서를 볼 수 있습니다.

```swift
let neis = Neis()
neis.fetchTimeTableClassRoom(key:...)
```
