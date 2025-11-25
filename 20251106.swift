//2025.11.06
//How to use the ternary conditional operator for quick tests
let age = 18
let canVote = age >= 18 ? "Yes" : "No"


//Day6 Loops, summary, and checkpoint 3
//How to use a for loop to repeat work
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}

for i in 1...12 {
    print(i)
}

for m in 5..<12 {
    print(m)
}

for  _ in 1...5 {
    print(1)
}
 


//How to use a while loop to repeat work

var countdown = 10

while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}

print("Blast off!")

let id = Int.random(in: 1...1000)
print(id)

let amount = Double.random(in: 0...1)
print(amount)

var number: Int = 10
while number > 0 {
    number -= 2
    if number.isMultiple(of: 2) {
        print("\(number) is an even number.")
    }
}



//How to skip loop items with break and continue

let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    
    print("Found picture: \(filename)")
}

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        
        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)



//Checkpoint3
for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5){
        print("FizzBuzz")
    }else if i.isMultiple(of: 3) {
        print("Fizz")
    }else if i.isMultiple(of: 5) {
        print("Buzz")
    }else {
        print(i)
    }
    
}


//Day7 Functions, parameters, and return values
//How to reuse code with functions
func showWelcome() {
    print("Hello, World!")
}

showWelcome()

func printTimesTables(number: Int) {
    for i in 1...12 {
        print(i * number)
    }
}

printTimesTables(number: 5)



//How to return values from functions
func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

//when a function has only one line of code, we can remove the return keyword entirely
func areLettersIdentical(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}

func rollDice1() -> Int {
    Int.random(in: 1...6)
}



//How to return multiple values from functions
func getUser() -> [String] {
    ["Taylor", "Swift"]
}

let user = getUser()

print("Name: \(user[0]) \(user[1])")
//Better coding
func GetUser1() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user1 = GetUser1()

print("Name: \(user1.firstName) \(user1.lastName)")
//Better coding
print("Name: \(user1.0) \(user1.1)")
//Better coding
let (firstName, lastName) = GetUser1()
print("Name: \(firstName) \(lastName)")
//Another coding
let (firstName2, _) = GetUser1()
print("Name: \(firstName2)")



//How to customize parameter labels
func isUppercase(string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string: string)
//Better coding
func isUppercase1(_ string: String) -> Bool {
    string == string.uppercased()
}

let string1 = "HELLO, WORLD"
let result1 = isUppercase1(string1)

//You already saw how we can put _ before the parameter name so that we don’t need to write an external parameter name. Well, the other option is to write a second name there: one to use externally, and one to use internally. Here’s how that looks:

func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)



//Day8 Default values, throwing functions, and checkpoint 4
//How to provide default values for parameters
func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll(keepingCapacity: true)
print(characters.count)
 


//How to handle errors in functions
enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "OK"
    }else if password.count < 10 {
        return "Good"
    }else {
        return "Excellent"
    }
}


let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
}catch {
    print("There was an error.")
}

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
}catch PasswordError.short {
    print("Please use a longer password.")
}catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
}catch {
    print("There was an error.")
}
