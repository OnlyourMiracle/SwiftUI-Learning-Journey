//Ckeckpoints 2
//2025.11.05
let MyArray = ["jfsdkljfl", "jksdfjsl", "jskdjflsjdfl", "jdkljfsljdf", "eorwiuwwp[oqehnf", "jfsdkljfl", "jksdfjsl"]
print(MyArray.count)
let MyArrayUnique = Set(MyArray)
print(MyArrayUnique.count)


//Day5 Conditions
//How to check a condition is true or false

let score = 85
if score > 80 {
    print("Good job!")
}


var username = "jksdjflsd"
//var username = "onlyourmiracle"
if username.isEmpty {
    username = "Anonymous"
}



//How to check multiple conditions
let age = 16

if age >= 18 {
    print("You can vote in the next election.")
}else {
    print("Sorry, you're too young to vote.")
}


let a = false
let b = true

if a {
    print("Code to run if a is true")
}else if b {
    print("Code to run if a is false but b is true")
}else {
    print("Code to run if both a and b are false")
}


let temp = 25

if temp > 20 {
    if temp < 30 {
        print("It's a nice day.")
    }
}
//Another coding
if temp > 20 && temp < 30 {
    print("It's a nice day.")
}


let userAge = 14
let hasParentalConsent = true

if userAge >= 18 || hasParentalConsent == true {
    print("You can buy the game")
}



//How to use switch statements to check multiple conditions
enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

if forecast == .sun {
    print("It should be a nice day.")
}else if forecast == .rain {
    print("Pack an umbrella.")
}else if forecast == .wind {
    print("Wear something warm.")
}else if forecast == .snow {
    print("School is cancelled.")
}else {
    print("Our forecast generator is broken!")
}
//Better coding
enum Weather1 {
    case sun, rain, wind, snow, unknown
}

let forecast1 = Weather1.sun

switch forecast1 {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm.")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecase generator is broken!")
}


//Another coding method
let day = 5
print("My true love gave to me...")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}/*That will match the first case and print “5 golden rings”, but the fallthrough line means case 4 will execute and print “4 calling birds”, which in turn uses fallthrough again so that “3 French hens” is printed, and so on. It’s not a perfect match to the song, but at least you can see the functionality in action!*/
 */
