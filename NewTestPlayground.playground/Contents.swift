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


// 7강 제너릭
//
/// 제너릭스를 이용한 swap 함수 - 다양한 자료형에 대한 swap이 가능
func swapTwoValues<T>( a: inout T, b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

// 하나의 함수로 여러 타입의 데이터 처리가 가능하다
n1 = 100; n2 = 200
swapTwoValues(a: &n1, b: &n2)
n1
n2

var s1 = "Hello"; var s2 = "World"
swapTwoValues(a: &s1, b: &s2)
s1
s2

func repeatInt(_ item: Int, times: Int) -> [Int]
{
    var result = [Int]()
    for _ in 1...times {
        result.append(item)
    }
    
    return result
}

repeatInt(3, times: 5)
repeatInt(4, times: 2)

func repeatString(_ item: String, times: Int) -> [String]
{
    var result = [String]()
    for _ in 1...times {
        result.append(item)
    }
    
    return result
}

repeatString("Hi", times: 5)
repeatString("Hello", times: 3)

func repeatItem<T>(_ item: T, times: Int) -> [T] {
    var result = [T]()
    for _ in 1...times {
        result.append(item)
    }
    
    return result
}

repeatItem("knock", times: 4)
repeatItem(10, times: 4)
repeatItem(1.1, times: 3)

//8강  중첩함수

/// Swift의 함수 - 중첩함수 샘플 코드
func funcA() -> Int {
    var a = 10
    /// 내부함수 funcB는 변수 a에 접근가능
    func funcB() {
        a = a + 10
    }
    funcB()
    
    return a
}

funcA()

/// swift 함수 중첩
func makeInc1() -> ((Int) -> Int)
{
    func addOne(number : Int) -> Int {
        return number+1
    }
    
    return addOne
}

var increment = makeInc1()
increment(7)

/// swift 함수 중첩
func makeInc2(amount: Int) -> () -> Int
{
    var runningTotal = 10
    func incrementor() -> Int {
        runningTotal += amount
        return runningTotal
    }
    
    return incrementor
}

var incFive = makeInc2(amount: 5)
incFive()
incFive()
incFive()
incFive()

var incTen = makeInc2(amount: 10)
incTen()
incTen()
incTen()

// 9강 클로저

let array = [1,2,3,4]
let arrayC = array.map({(i:Int) -> Int in return i * 2})
let arrayD = array.map({(i:Int) -> Int in return i * i})

// Swift의 newDoubler라는 함수선언 방식 - 클로저를 표현식
let newDoubler = {(i:Int) -> Int in return i * 2}
newDoubler(3)
let arrayE = array.map(newDoubler)

// 10강 열거형, 구조체, 클래스
enum Compass {
    case North
    case South
    case East
    case West
}

enum CompassPoint {
    case North, South, East, West
}

var directionToBusan : Compass
directionToBusan = Compass.East
directionToBusan = .West

enum Barcode {
    case UPCA(Int, Int, Int, Int), QRCodes(String)
}

var productBarcode = Barcode.UPCA(8, 77777, 11100, 3)
productBarcode = .QRCodes("ABCDEFGHIJK")

// productBarcode가 Barcode의 멤버중 일치되는 형이 있으면 진행
switch productBarcode {
case .UPCA(let numberSystem, let manufacturer, let product, let check) :
    print("UPC-A : \(numberSystem), \(manufacturer), \(product)")
case .QRCodes(let productCode) :
    print("QR : \(productCode)")
}


// Planet enumeration에 rawValue 할당이 가능
enum Planet : Int {
    case Mercury = 1, Venus, Earth, Mars, Jupitor, Saturn, Uranus, Neptune
}

enum Planets : Int {
    case Mercury, Venus, Earth, Mars, Jupitor, Saturn, Uranus, Neptune
}

Planet.Mercury
Planet.Mercury.rawValue
Planet.Venus.rawValue

Planets.Mercury.rawValue

// 구조체, 클래스

struct Resolution {
    var width = 0
    var height = 0
    func description() -> Void {
        print("Resolution width = \(width), height = \(height)")
    }
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    func description() -> Void {
        print("Video interlacing = \(interlaced)")
    }
}

var res = Resolution()
res.width = 1920
res.description()

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.width = 2048
//hd.width = 2048


// 11강 값타입과 참조타입

struct PersonInfo {
    // struct의 속성(property)이라고 함
    var SSN : Int   // 변수 속성
    let age : Int   // 상수 속성
}

var person1 = PersonInfo(SSN: 111222, age: 23)
person1.SSN = 112233
person1
//person1.age = 10

// 상수 구조체의 저장속성은 변경이 불가능 - 아래 주석문은 error
let person2 = PersonInfo(SSN: 4, age: 29)
//person2.SSN = 222233

struct Round {
    var radius : Double = 0.0
    var area : Double = 0.0
}

var r = Round()
var copy_r = r
copy_r.radius = 10.0
copy_r

class Circle {
    var radius : Double = 0.0
    var area : Double = 0.0
}

// c는 Circle 인스턴스를 참조함
var c = Circle ()
// copy_c는 Circle 인스턴스 참조 변수임
var copy_c : Circle
// copy_c가 c가 참조하는 Circle 인스턴스를 참조함
copy_c = c
copy_c.radius = 10
copy_c
c

class OtherReference {
    var a = 10
}

// 변수형 클래스의 속성은 당연히 변경 가능함
var ref3 = OtherReference()
ref3.a = 100
// 상수형 클래스의 속성 역시 변경가능함
let ref4 = OtherReference()
ref4.a = 100

//ref4 = ref3
ref3 = ref4


// 12강 구조체의 초기화, 변경가능, 불가능 속성

struct Celsius {
    var temperatureInCelsius: Double
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
}
let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
// boilingPointOfWater.temperatureInCelsius is 100.0
let freezingPointOfWater = Celsius(fromKelvin: 273.15)

struct Point {
    var x = 0.0, y = 0.0
    
    func isToTheRightOfX( x : Double ) -> Bool {
        return self.x > x
    }
}

var somePoint = Point(x: 4.0, y : 5.0)
somePoint.x += 10
somePoint.x
somePoint.isToTheRightOfX(x: 30)

struct Point0 {
    var x = 0.0, y = 0.0
    
    mutating func moveByX(deltaX : Double, deltaY : Double) {
        x += deltaX
        y += deltaY
    }
}
// 다음은 에러(mutating 을 메소드 앞에 추가해주면 해결!)
var somePoint0 = Point0()
somePoint0.moveByX(deltaX: 200.0, deltaY: 300.0)


// 13강 옵셔널
// 원칙 : 스위프트의 일반자료형 변수는 nil이 될 수 없다
var movie = "깨어난 포스"
//movie = nil
// 다음 경우도 오류
//var otherMovie : String = nil

// 정상적으로 값을 반환할 수 있는 경우
var num : Int? = Int("Hello")
num

// 원칙 : Optional 변수는 nil이 될 수 있다
var optionalMovie1 : String? = "깨어난 포스"
optionalMovie1 = nil
var optionalMovie2 : String? = nil
optionalMovie2 = "깨어난 포스"

//var movie = nil

var num2 : Int? = Int("100")

//다음은 오류
//var n = Int("100") + Int("300")
//정상
var n3 = Int("100")! + Int("300")!

//옵셔널 String과 비옵셔널 String
var optionalString : String?
var nonOptionalString : String
// optional 변수에 아무런 값을 할당하지 않으면 nil 값을 가진다
optionalString
// 아래와 같이 !로 강제 unwrapping하면 non Optional이 되어 오류발생
// 비옵셔널 변수는 nil을 가질 수 없다
//optionalString!
// 옵셔널 변수에 새로운 값을 할당
optionalString = "abcd"

// optional 변수는 강제 unwrapping하여 새로운 값 할당
optionalString! = "abcd"
optionalString!.uppercased()


// 14강 옵셔널체인
struct Person {
    var name : String?
    var age : Int
}

var person14 : Person? = Person(name:"홍길동", age:27)

//person14 = nil
//print("이름은 \(person14!.name) 입니다")

if person14 != nil {
    if person14!.name != nil {
        print("이름은 \(person14!.name!) 입니다")
    }
}

// 이 person은 optional person이다, ! OK
if let b14 = person14 {
    // 이 블럭의 b14는 확실히 nil이 아닐 것이다ㅣ(자동으로 unwrapping), 따라서 nonoptional
    if let name = b14.name {
        // name 은 확실히 nil이 아닐 것이다
        // 강제 해제(forced unwrapping '!')를 사용 안해도 implicit unwrapping이 됨
        print("이름은 \(name) 입니다")
    }
}

struct University {
    var president : Person?
    var universityName : String?
    var numOfStudents : Int
}

// 좀 더 복잡한 예
var cwnu : University? = University(president:person14, universityName:"창원대학교", numOfStudents : 8400)

// if 구문이 3개나 쓰이는 불편한 구문
if let university = cwnu {
    if let president = university.president {
        if let name = president.name{
            print("총장의 이름은 \(name)입니다")
        }
    }
}

// 옵셔널 체인을 사용함
// 아래를 uncomment할 경우 crash가 발생하지 않음
cwnu = nil

if let name = cwnu?.president?.name {
    print("총장의 이름은\(name)입니다.")
}

//cwnu 자체가 nll이라 할당되지 않음
cwnu?.president?.name = "너총장"

// 15강 클래스
class VideoMode15 {
    // 값을 저장하는 프로퍼티(속성)
    var interlaced = false
    var framRate = 0.0
    var name : String?
    
    // 인스턴스의 행위를 정의하는 메소드
    func description() -> Void {
        if let className = name {
            print("VideoMode 클래스의 설명 : \(className)")
        }
    }
}

// VideoMode()를 통해 인스턴스를 생성
var aVideo = VideoMode15()
// 인스턴스의 프로퍼티에 값을 준다
aVideo.interlaced = true
aVideo.name = "1080i"
// 인스턴스의 메소드 호출을 통해 일을 시킨다
aVideo.description()

class Car {
    var speed : Int
    var color : String
    // 초기화 구문이 있을경우 초기화는 반드시 하지 않아도 됩니다.
    init(){
        speed = 0
        color = "Red"
        print("Car 인스턴스가 생성되어 프로퍼티가 초기화됨")
    }
    init(color:String){
        speed = 0
        self.color = color
        //  print("Car 인스턴스가 생성되어 프로퍼티가 초기화됨")
    }
    
    deinit {
        print("Car 인스턴스 해제됨")
    }
    
    func desc() {
        print("Car.speed = \(self.speed)")
        print("Car.color = \(self.color)")
    }
}

var aCar : Car? = Car()
aCar!.desc()
aCar = nil

var bCar : Car? = Car(color: "White")
bCar!.desc()
bCar = nil

class RaceCar : Car {
    var hasTurbo: Bool
    override init() {
        hasTurbo = true
        super.init()
        print("RaceCar instance가 생성되어 초기화됨")
    }
    override func desc() {
        print("hasTrubo = \(hasTurbo)")
        super.desc()
    }
}

var myCar = RaceCar()
myCar.desc()

// 16강 자동참조계수, 강한참조, 약한참조

// 자동참조 개수에 의한 객체의 생성과 해제
// ARC - Authomatic Reference Counting
class Person16 {
    var name : String
    
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    deinit {
        print("\(name) is deinitialized")
    }
}

var reference1 : Person16?
var reference2 : Person16?
var reference3 : Person16?

reference1 = Person16(name: "홍길동")

reference2 = reference1
reference3 = reference1

reference1 = nil
reference2 = nil
//reference3 = nil

class Person16A {
    let name: String
    var apartment: Apartment16?
    init(name: String) { self.name = name }
    deinit { print("\(name) is being deinitialized")
    }
}

class Apartment16 {
    let number: Int
    var tenant: Person16A?
    init(number: Int) { self.number = number }
    deinit { print("Apartment #\(number) is being deinitialized") }
}

var john: Person16A?
var number73: Apartment16?

john = Person16A(name: "John Appleed")
number73 = Apartment16(number: 77)

john!.apartment = number73
number73!.tenant = john

john!.apartment = nil
number73!.tenant = nil

john = nil
number73 = nil


// 17강 프로토콜

//SampleProtocol 프로토콜 선언
protocol SampleProtocol {
    func desc(name: String)
}

//var smaple : SampleProtocol = SampleProtocol()

// 구조체 Man, Woman, 클래스 Person 모두 desc()를 구현해야 함
struct Man : SampleProtocol {
    func desc(name: String) {
        print("남자의 이름은 \(name)입니다 ")
    }
}

struct Woman : SampleProtocol {
    func desc(name: String) {
        print("여자의 이름은 \(name)입니다 ")
    }
}

class Person17: SampleProtocol {
    func desc(name: String) {
        print("사람의 이름은 \(name)입니다")
    }
}

protocol InitProtocol {
    init()
    init(name: String)
}

struct StructInit : InitProtocol {
    var name : String
    init() {
        self.name = "홍길동"
    }
    init(name: String) {
        self.name = name
    }
}

class ClassInit : InitProtocol {
    var name : String
    required init() {
        self.name = "홍길동"
    }
    required init(name: String) {
        self.name = name
    }
}

protocol TestProtocol {
    init()
}

