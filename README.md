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
for element in array where element.count <= 3{
    print(element)
}
```

where를 사용해 조건에 해당하는 값만 루프를 실행할 수 있다.

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

```swift
func a(name: String, age:Int)->String{
    return "\(name) \(age)살"
}
print(a(name:"이형진",age: 19))
```

함수는 func 키워드를 사용하여 선언하고, -> 뒤에 리턴 타입을 작성한다.

호출할 때는 파라미터 이름을 적어야 한다.

```swift
func b(_ name:String, years age:Int = 1)->String{
    return "\(name) \(age)살"
}
print(b("이형진", years: 19))
```

파라미터 앞에 호출 시 사용할 별명을 적을 수 있고, _를 적으면 호출 시 파라미터 이름을 적지 않아도 된다.

함수의 기본 값을 선언할 수도 있다.

```swift
var y = 1
func inoutFunc(a : inout Int){
    a=3
}
inoutFunc(a: &y)
```

inout 함수를 사용하면 포인터를 사용하는 함수를 만들 수 있다.

```swift
let closure = {(name:String) -> (String) in
    return "hi \(name)"
}
print(closure("lee"))
```

클로저는 익명 함수의 개념이며 (코틀린의 람다처럼 쓰임) {(파라미터) -> 반환형 in 함수내용}으로 만든다.

클로저를 호출할 때에는 파라미터 이름을 적지 않는다.

```swift
(
    {(name:String) -> () in
        print( "hi \(name)")
    }
)("이형진")
```

괄호로 묶어 일회성으로 호출할 수 있다.

```swift
func func1(closure : (String)->()){
    closure("func1")
}

func1(closure: {(name:String)->() in
    print(name)
})
```

원래 클로저를 파라미터로 받는 함수를 호출할 때는 이렇게 해야하지만

```swift
func1{(name : String) ->() in
    print("hello \(name)")
}
```

코틀린의 람다를 받는 함수와 마찬가지로 마지막 파라미터가 클로저일 경우 괄호 밖에 함수를 호출할 수 있고

파라미터가 클로저 하나일 경우, 괄호 또한 생략 가능하다.

이를 트레일링 클로저라고 한다.(후행 클로저)

```swift
protocol Prot{
    var name{get set}
    var method()->Void
}
```

프로토콜은 인터페이스의 개념이며 요구 사항을 작성한다.

```swift
struct B : Prot{
    var name:String=""
    func method() {
        print("method")
    }
}
```

 : protocol을 통해 프로토콜을 채택할 수 있으며

프로토콜을 채택하면 프로토콜의 요구사항을 준수해야 한다.

```swift
protocol Proto2 : Proto{
    var age:Int{get}
}
```

프로토콜을 확장할 수도 있다.

```swift
var b = B()
print(b is Proto)
print(b as? Proto)
```

is를 통해 해당 프로토콜을 채택했는지를 알 수 있다.

as?는 프로토콜을 채택했을 경우 값을, 채택하지 않았을 경우 nil을 반환한다.

```swift
var name:String=""
var intoduce:String{return "my name is \(name)"}
```

프로퍼티의 종류에는 값을 저장하는 stored 프로퍼티,

계산된 값을 반환하는 computed 프로퍼티가 있다.

```swift
enum Food{
    case chicken(isFried:Bool)
    case pizza(String),rice
}
var lunch = Food.chicken(isFried: true)
lunch = .pizza("콤비네이션")
```

struct에서 프로퍼티를 변경하는 함수 앞에는 mutating 키워드를 붙여야 한다.

enum은 관련된 값을 공동의 자료형으로 구분해 형 안정성을 보장한다.

case를 사용하거나 컴마를 통해 enum에 case를 정의할 수 있고 chicken의 예시처럼 관련 값을 정의할 수 있다.

enum으로 선언된 값을 변경할 경우 .case로 변경 가능하다.(점 문법)

```swift
switch lunch{
case let .pizza(name):
    print("오늘 점심은 \(name)피자")
case .chicken(isFried :true):
    print("오늘 점심은 후라이드 치킨")
case .chicken(isFried: false):
    print("오늘 점심은 양념 치킨")
case .rice:
    print("오늘 점심은 밥")
}
```

enum을 switch로 사용하려면 모든 case를 나열하거나 default 구문을 사용해야 한다.

```swift
class A{
    var prop1:Int?
    var prop2:String?
}
struct B{
    var prop1:Int?
    var prop2:String?
}
```

스위프트에는 Class와 Struct가 있으며 Class는 Reference 타입, Struct는 value 타입이다.

Class와 Struct는 메서드, 프로퍼티를 정의 한다는 점에서 공통점이 있으나 상속이나 소멸자 같은 일부 기능은 Class만 사용 가능하다.

```swift
struct Human{
    var age:Int
    var name:String
}
let me = Human(age: 19, name: "이형진")
me.age = 10 //error
```

구조체는 초기화 메서드를 자동으로 제공한다.

구조체를 let으로 선언할 경우 구조체의 프로퍼티를 변경할 수 없다.
