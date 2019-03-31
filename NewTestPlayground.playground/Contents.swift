import UIKit

// 배열의 생성과 초기화
// 배열형을 [Int]로 추정함
var intArray1 = [100,200,300,400]

// 배열형 [Int]로 명시함
var intArray2 : [Int] = [10,20,30,40,50,60]

intArray1 = intArray2

// 배열형임을 Array<>로 선언함
var intArray3 : Array<Int> = [10,20,30]

// 비어있는 Int형 배열 선언1 - 0 element
var intArray4 : [Int] = []
intArray4
intArray4 = [1,2,3,4,5]

// 비어있는 Int형 배열 선언2
var intArray5 = [Int]()

var anyArray1 : Array<Any> = [1,2,"AB","ABCD"]
//intArray1 = anyArray1

var threeDoubles = [Double](repeating: 1.0, count: 30)

var fourInts = [Int](repeating: 5, count: 4)
var eightInts = fourInts + fourInts

var stringArray0 : [String] = ["hello", "world"]

// 문자열 배열 - 비어있는 배열
var stringArray1 = [String]()
var stringArray2 = [String]()

stringArray0.count
stringArray1.count

// 배열원소의 접근과 수정
intArray1[0]
intArray1[0...2]
intArray1[0] = 12
intArray1[0...2] = [100, 200, 300]

intArray1
intArray1.insert(99, at: 0)

intArray1 = intArray2.reversed()

intArray1.removeFirst()
intArray1.removeLast()
intArray1
intArray1.remove(at: 0)

for item in intArray1 {
    item
}

for str in stringArray0{
    "\(str)"
}

var keyValue : [String:String] = ["Playground" : "a place where people can play", "glossary" : "a vocabulary"]

var dicA : [String:String] = ["광해": "사극영화", "살인의 추억":"미스테리영화"]

var dicB = ["초등": [1,2,3,4,5,6], "중등":[1,2,3], "고등":[1,2,3], "대학":[1,2,3,4]]


for ( key, val ) in dicA {
    "\(key): \(val)"
}

for code in dicA.keys {
    "\(code)"
}

for code in dicA.values {
    "\(code)"
}

var n = 5
var m = 10

if n == m {
    print("n and m is equal")
}
else if n < m {
    print("m is larger than n")
}
else {
    print("n is larger than m")
}

for index in 1...5 {
    "\(index) times 4 is \(index*4)"
}

var base = 2
var power = 9
var answer = 1

for _ in 1...power {
    answer *= base
}

for _ in 1...power {
    answer *= base
}

// String형을 열거하는 for-in
for ch in "HELLO" {
    print(ch)
}

// String형을 Character형으로 열거하는 for-in
// enumerate()는 index와 문자값의 쌍으로 열거함
for (idx,ch) in "HELLO".enumerated()
{
    print("index : "+String(idx)+" "+String(ch))
}

var ch = "A"

switch ch {
case "A" :
    fallthrough
case "a" :
    "match"
default :
    "unmatch"
}

var letter = "A"

switch letter {
case "A"..."Z":
    "알파벳 대문자"
case "a"..."z":
    "알파벳 소문자"
default:
    "알파벳 아님"
}

let aChar : Character = "z"
switch aChar {
case "a", "e", "i", "o", "u":
    print("\(aChar)는 모음")
case "a"..."z":
    print("\(aChar)는 자음")
default:
    print("\(aChar)는 자음도 모음도 아님")
}

var strInput = "Swift is very fast"
var strOutput = ""

// continue 문을 만나면 더이상의 조건 검사를 중지함
for ch in strInput {
    switch ch {
    case " " :
//        continue
        fallthrough
    default :
        strOutput.append(ch)
    }
}
strOutput


// 5강 기초함수

// 입력된 정수에 10을 더하여 반환하는 함수
func Add10(num: Int) -> (Int) {
    let result = num + 10
    return result
}

n = 20
print("Before Add10(n), n = \(n)")
n = Add10(num: n)
print("After Add10(n), n = \(n)")


func getPersonInfo() -> (Int, String, Int)
{
    return (27, "홍길동", 182)
}

var person = getPersonInfo()


func swap(p1: Int, p2:Int) -> (Int,Int)
{
    return (p2, p1)
}

var n1 = 100, n2 = 200

print("before swap : n1 = \(n1), n2 = \(n2)")
(n1, n2) = swap(p1: n1, p2: n2)
print("after swap : n1 = \(n1), n2 = \(n2)")


// swift는 함수 중복정의를 허용함
func greetings() {
    print("Hello, Guys!")
}

// 매개변수 name을 가진 greetings() 함수
func greetings(name: String) {
    print("Hello, \(name)!")
}

greetings()
greetings(name: "홍길동")


// 6강 고급함수

func join(s1: String, s2: String, joiner: String) -> String {
    return s1 + joiner + s2
}

join(s1: "hello", s2: "world", joiner: ", ")

// 함수 레이블을 통해서 매개변수의 의미를 명확하게 함
func join(string s1: String, toString s2: String, withJoiner joiner: String) -> String {
    return s1 + joiner + s2
}

join(string: "춘향", toString: "이몽룡", withJoiner: " 그리고 ")
join(string: "로미오", toString: "줄리엣", withJoiner: " , ")

func arithmeticMean(numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

arithmeticMean(numbers: 1,2,3,4,5,6,7,8)
//8 정수의 산술평균 4.5를 반환함
arithmeticMean(numbers: 3,8,19)
// 3,8,19의 산술평균 10을 반환함

// 함수 타입에 대해 알아봅시다 -1
func addTwoInts(a: Int, b: Int) -> Int {
    return a + b
}

func multTwoInts(a: Int, b: Int) -> Int {
    return a * b
}

addTwoInts(a: 1, b: 3)
multTwoInts(a: 1, b: 3)

// mathFunction은 함수타입 변수임
var mathFunction: (Int, Int) -> Int
mathFunction = addTwoInts

mathFunction(1,3)

// 함수타입(형) 변수에 레이블을 사용할 경우 error
//mathFunction(a: 2, b: 3)

mathFunction = multTwoInts
mathFunction(1,3)

func printMathResult(mathFunction: (Int, Int) -> Int, a: Int, b: Int){
    print("Result: \(mathFunction(a, b))")
}
printMathResult(mathFunction: addTwoInts, a: 3, b: 5)
