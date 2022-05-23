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

var z:Int?
print(z)

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
