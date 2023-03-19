import UIKit

var name : String
name = "Ginanjar"

var exp : Int
exp = 1000

var latitude : Double
latitude = 36.166667

var longitude : Float
longitude = -86.783333
longitude = -186.783333
longitude = -1286.783333
longitude = -12386.783333
longitude = -123486.783333
longitude = -1234586.783333

var stayOutTooLate: Bool
stayOutTooLate = true

var food: String = "Mouse"

//String Interpolation
print("My name is \(name) and I have \(exp). So, you can find me on map Madastin at \(longitude), \(latitude)")

//Array
var evenNumbers : [Int] = [2,4,6,8]
type(of: evenNumbers)
var grades : [String] = ["A", "B", "C", "D"]
type(of: grades)
grades[2]

var mixinData : [Any] = ["Gold", 29, 9.2, -20, true]
mixinData[3]

//Init Array
var materials : [String] = []
var materials1 = [String]()

//Function
func greeting() {
    print("Hello Ginanjar")
}
greeting()

//Function With Params
func greetingTo(name: String) {
    print("Hello \(name)")
}
greetingTo(name: "Egin")

func greetingToName(_ name : String) {
    print("Hi, \(name)")
}
greetingToName("Egin")

func greetingToYou(yourFriend name: String) {
    print("Hy \(name)")
}
greetingToYou(yourFriend: "Ginanjar")

//Function with Return Value
func sum(_ x: Int, _ y: Int) -> Int {
    return x + y
}
print("Jumlah dari 1 + 2 adalah \(sum(1, 2))")

//Function with Optional Return Value
func isItApple(_ value: Bool) -> Bool? {
    return value ? value : nil
}

var apple = isItApple(true)

//Check Position of String
func position(of string: String, in array: [String]) -> Int {
    for i in 0..<array.count {
        if array[i] == string {
            return i
        }
    }
    return 0
}

var items = ["Jhon", "Smith", "Beryl", "Bryan"]
let jhonPosition = position(of: "Jhon", in: items)
let smithPosition = position(of: "Smith", in: items)
let berylPosition = position(of: "Beryl", in: items)
let bryanPosition = items.firstIndex(of: "Bryan")

//Enum
enum WeatherType {
        case sun, cloud, rain, wind, snow
}

func getWeatherType(weather: WeatherType) -> String? {
    if weather == WeatherType.sun {
        return nil
    }
    
    return "Not in Sun"
}
getWeatherType(weather: WeatherType.sun)

enum CallerType {
    case none, some(person: String)
}

func getCaller(_ caller: CallerType) {
    print("Who's there?")
    
    switch caller {
        case .none:
            print("* silence *")
        case .some(let person):
            print(person)
    }
        
}
getCaller(.none)
getCaller(.some(person: "Wopp"))
