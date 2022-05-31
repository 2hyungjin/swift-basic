var n = 0
let m = 1

var name:String = "my name"

var array = ["one","two"]
var dict = ["one":1, "two":2]

array[0]
dict["one"]

var blankArray:[String]=[]
var blankDict:[String:Int]=[:]

var array2=[Int](repeating:0, count: 10)

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

print(array)

print("배열의 요소 : \(array)")

if n==0 {print(0)}

for element in array{
    print(element)
}

for element in array where element.count <= 3{
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

var range = 1...10
var range2 = 1..<10

var canNil : Int? = nil
//var cantNil : Int = nil //error


var optionalInt:Int?=2
print(optionalInt) //Optional(2)

print(optionalInt!) //2

if let justInt = optionalInt{
    print(justInt)
}else{
    print("nil")
}

var nilArray : [String]?=["one"]
print(nilArray?.isEmpty)

func a(name: String, age:Int)->String{
    return "\(name) \(age)살"
}
print(a(name:"이형진",age: 19))

func b(_ name:String, years age:Int)->String{
    return "\(name) \(age)살"
}
print(b("이형진", years: 19))

let closure = {(name:String) -> (String) in
    return "hi \(name)"
}
(
    {(name:String) -> () in
    print( "hi \(name)")
}
)("이형진")
print(closure("lee"))

func func1(closure : (String)->()){
    closure("func1")
}

func1(closure: {(name:String)->() in
    print(name)
})
func1{(name : String) ->() in
    print("hello \(name)")
}

class A{
    var prop1:Int?
    var prop2:String?
}

protocol Proto{
    var name:String{get set}
    func method()->Void
}

struct B : Proto{
    var name:String=""
    var intoduce:String{return "my name is \(name)"}
    func method() {
        print("method")
    }
}

protocol Proto2 : Proto{
    var age:Int{get}
}

var b = B()
b.name="Lee"
print(b is Proto)
print(b as? Proto)
print(b.intoduce)

struct  C{
    var name:String
}
var c = C(name: "lee")

struct Student{
    var name:String = ""
    
    mutating func change(name:String){
        self.name=name
    }
}


var y = 1
func inoutFunc(a : inout Int){
    a=3
}
func simpleFunc(){
    print("하이")
}
inoutFunc(a: &y)
print(y)

func sample(fun : ()->Void){
    print("함수")
    fun()
}
sample(fun: simpleFunc)

enum Food{
    case chicken(isFried:Bool)
    case pizza(String),rice
}
var lunch = Food.chicken(isFried: true)
lunch = .pizza("콤비네이션")

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
struct Human{
    var age:Int
    var name:String
    var gender:String
}
let me = Human(age: 19, name: "이형진", gender: "male")
print(me)
//me.age = 10 //error

