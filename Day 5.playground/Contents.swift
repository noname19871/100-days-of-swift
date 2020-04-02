import Cocoa

// functions syntaxis
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}

printHelp()

// function with parameter
func square(number: Int) {
    print(number * number)
}

square(number: 8)

// function with return
func square2(number: Int) -> Int {
    return number * number
}

let result = square2(number: 8)
print(result)

// Swift allows us to give parameters insde a functions two names –– one to use internally
// and one to use externally outside the function
func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Taylor")

//  we can avoid to use external names using underscore
func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Taylor")

// We can give a default value to parameters
func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet("Taylor")
greet("Taylor", nicely: false)

// we can usei variadic functions –– so we pass a different number of parameters
// into a function and Swift convert it to array
func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square(numbers: 1, 2, 3, 4, 5)

// We can use throw to avoid bad function behavior

// first of all let`s define error function
enum PasswordError: Error {
    case obvious
}

// And now we can use it
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

// if we type password here we will receive throwing
checkPassword("password1")

// But Swift doesn`t like bare throws, so we need to wrap it with do/try/catch block
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

// all parameters inside functions are constants, so we can`t change them.
// To avoid it, we can use inout keyword
func doubleInPlace(number: inout Int) {
    number *= 2
}

// And call it with ampersand before parameter
var myNum = 10
doubleInPlace(number: &myNum)
