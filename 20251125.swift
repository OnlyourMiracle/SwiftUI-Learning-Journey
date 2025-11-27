//2025.11.25
//Checkpoint 4

 With functions under your belt, it’s time to try a little coding challenge. Don’t worry, it’s not that hard, but it might take you a while to think about and come up with something. As always I’ll be giving you some hints if you need them.

 The challenge is this: write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number. That sounds easy, but there are some catches:

 You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
 If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
 You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
 If you can’t find the square root, throw a “no root” error.
 As a reminder, if you have number X, the square root of X will be another number that, when multiplied by itself, gives X. So, the square root of 9 is 3, because 3x3 is 9, and the square root of 25 is 5, because 5x5 is 25.
 */
enum NumError: Error {
    case OutOfBound, notRoot
}

func Checkpoint4(num: Int) throws -> Int {
    if num < 1 || num > 10000 {
        throw NumError.OutOfBound
    }
    var log = 0
    var Myresult = 0
    for i in 1...100 {
        if i * i == num {
            log = 1
            Myresult = i
        }
    }
    if log == 0 {
        throw NumError.notRoot
    }
    return Myresult
}

do {
    let result = try Checkpoint4(num: 4)
    print(result)
}catch NumError.OutOfBound {
    print("Out of bound")
}catch NumError.notRoot {
    print("not root")
}
