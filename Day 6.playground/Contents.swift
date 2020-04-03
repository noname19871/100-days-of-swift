import Cocoa

// In swift we can assign function to a variable. It`s called closure
let driving = {
    print("I'm driving in my car")
}

driving()

// We can pass parameters to a closure
let driving1 = { (place: String) in
    print("I'm going to \(place) in my car")
}

driving1("London")

// And return values from closure
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)

// We can also pass closure to another function as parameter
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving)

// if closure is a last parameter, Swift let us use special TRAILING CLOSURE syntax
// we can pass closure directly after the function inside {} brackets

// So we can write like this
travel() {
    print("I'm driving in my car")
}

// Or this
travel {
    print("I'm driving in my car")
}

// And of course we can use closures with their own parameters into a functions
func travel1(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel1 { (place: String) in
    print("I'm going to \(place) in my car")
}

// And closures with returning values
func travel2(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel2 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

// Actually, we can use shorthand syntax to avoid using a lot of keywords

// So, it is allowed
travel2 { place -> String in
    return "I'm going to \(place) in my car"
}

// and this
travel2 { place in
    return "I'm going to \(place) in my car"
}

// and this
travel2 { place in
    "I'm going to \(place) in my car"
}

// and this
travel2 {
    "I'm going to \($0) in my car"
}

// We can also give multiple parameters to a closure
func travel3(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel3 {
    "I'm going to \($0) at \($1) miles per hour."
}

// We also can return closure from function
func travel4() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

// recommended usage
var result = travel4()
result("London")

// not recommended usage
let result2 = travel4()("London")

// If we use external values inside a closure, Swift captures them and stores alongside the closure
// So they can be modified even if they don`t exist anymore
func travel5() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

result = travel5()
result("London")
result("London")
result("London")

