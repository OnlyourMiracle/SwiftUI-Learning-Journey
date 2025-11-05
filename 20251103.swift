//2025.11.03
//Day3 Arrays, dictionaries, sets, and enums
var beatles = ["John", "Pual"]
let numbers = [3, 2, 1]
beatles.append("onlyourmiracle")

var scores = Array<Int>()
scores.append(1)
scores.append(2)
print(scores[0])

var albums1 = Array<String>()
albums1.append("Hello")
albums1.append("world")

var albums2 = [String]()
albums2.append("Hello")
albums2.append("world")

print(albums1.count)

albums1.remove(at: 0)
print(albums1.count)

albums2.removeAll()
print(albums2.count)

let bondMovies = ["Casiono", "Spectre"]
print(bondMovies.contains("Spectre"))

let cities = ["London", "Tokyo"]
print(cities.sorted())

let presidents = ["Bush", "Obama"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)
print(presidents[0])
//print(reversedPresidents[0]) Wrong: reversedPresidents is not an array



let employee2 = ["name": "onlyourmiracle", "job": "Student"]
//Better coding
let employee3 = [
    "name": "onlyourmiracle",
    "job": "Student"
]

//print(employee2["name"]) //Not good, it will say "Expression implicitly coerced from 'String?' to 'Any'"
print(employee2["name", default: "Unknown"])

let hasGraduated = [
    "Eric": false,
    "Maeve": true
]

let olympics = [
    2008: "China",
    2012: "London"
]

print(olympics[2012, default: "Unknown"])

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["LeBron James"] = 206



let people = Set(["Denzel Washington", "Tom Cruise"])

var people2 = Set<String>()
people2.insert("onlyourmiracle")
people2.insert("Nicolas Cage")



enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

//Easier coding
enum Weekday2 {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = Weekday.tuesday

//Easier coding
var day1 = Weekday.monday
day1 = .tuesday



//Day4 Complex data types, part 2


let surname = "Lasso"
var score = 0
//Better coding, more explicit
let surname1: String = "Lasso"
var score1: Int = 0
var score2: Double = 0
var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@twostraws"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation"])
var teams: [String] = [String]()
var cities: [String] = []
var clues = [String]()
