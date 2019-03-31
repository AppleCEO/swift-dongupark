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
