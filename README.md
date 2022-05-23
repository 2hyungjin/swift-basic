```swift
var n = 0
let m = 1
```

변수는 var, 상수는 let으로 선언한다.

```swift
var name:String = "my name"
```

코틀린과 마찬가지로 정적 자료형 언어이다.

타입 추론 기능을 제공하고 직접적으로 자료형을 명시할 수도 있다.

```swift
var array = ["one","two"]
var dict = ["one":1, "two":2]

array[0]
dict["one"]
```

배열과 딕셔너리(맵) 모두 괄호를 사용하여 생성한다.

let으로 선언할 경우 Immutable 자료형이 된다.

```swift
var blankArray:[String]=[]
var blankDict:[String:Int]=[:]
//간단하게 선언하기
var blankArray=[String]()
var blankDict=[String:Int]()
```

빈 배열을 생성할 때에는 타입을 지정해야 한다.

```swift
var array2=[Int](repeating:0, count: 10) //repeating : 초기화 값, count : 횟수

array.isEmpty //빈 배열이면 True
array.count //배열 요소의 수
array.endIndex //마지막 인덱스
array.first //처음 값
array.last //마지막
array.firstIndex(of: "one") //요소의 인덱스 가져오기

array.append("three") //값 추가
array.append(contentsOf: ["four","five"]) //배열 값 추가

array.insert("zero", at: 0) //특정 인덱스에 값 추가

array.remove(at: 0) //인덱스 값 삭제

array.sort() //배열 정렬
array.sorted() //정렬된 배열 반환
array.sorted(by: >) //내림 차순 정렬
```

```swift
print("배열의 요소 : \(array)")
```

문자열 리터럴은 \\(변수명)으로 한다.

```swift
if n==0 {print(0)}

for element in array{
    print(element)
}

switch n{
case 0:
    print(0)
case 1:
    print(1)
default:
    print(-1)
}
```

조건, 반복, 스위치 문은 괄호가 없다는 점을 제외하면 다른 언어와 크게 다르지 않다.

```swift
var range = 1...10 //1부터 10까지
var range2 = 1..<10 //1부터 9까지
```

범위를 생성할 수 있다.

```swift
var canNil : Int? = nil
var cantNil : Int = nil //error

var z : Int?
print(z) //nil
```

스위프트에서는 널을 nil로 표현하며 코틀린과 마찬가지로 nil이 가능한 타입을 ?으로 구분한다.

nill이 가능한 타입을 Optional이라고 부르며 Opional의 기본값은 nil이다.

```swift
var optionalInt:Int?=1
print(optionalInt) //Optional(1)
```

Optional 타입은 값이 있을 수도, 없을 수도(nil일 수도) 있기 때문에 Optional(값)으로 Wrapping된 상태이다.

```swift
print(optionalInt!) //2
```

!를 사용해 Optional Wrapping을 강제로 풀 수 있다.

이 경우 값이 nil의 경우 런타임 에러를 발생한다.

```swift
if let justInt = optionalInt{
    print(justInt)
}else{
    print("nil")
}
```

보통 Optional의 Wrapping을 풀기 위해서는 Optional Binding을 사용한다.

```swift
var nilArray : [String]?
print(nilArray?.isEmpty)
```

코틀린처럼 ?.메서드로 nil체크를 할 수 있다.
