import Cocoa

// We can create our own data structures
struct Sport {
    
//  this variable calles property
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

// Because both name and tennis are variables, we can change then
tennis.name = "Lawn tennis"

// we can add computed properties to our structures
struct Sport2 {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport2(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

// In Swift we can do something whenever value in struct has been changed
// To do this, we use property observer didSet
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

// Actually, we have also a willSet property observer to take action BEFORE value changed
// but it`s rarely used

// Structs can have functions inside them. This functioncs called methods
struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
print(london.collectTaxes())

// if we want to change a property using method we should mark this method as mutating
struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()
print(person.name)

// In Swift string is also a struct, so it has a lot of properties
let string = "Do or do not, there is no try."

print(string.count)

print(string.hasPrefix("Do"))

print(string.uppercased())

print(string.sorted())

// And arrays are also structs
var toys = ["Woody"]

print(toys.count)

toys.append("Buzz")

toys.firstIndex(of: "Buzz")

print(toys.sorted())

toys.remove(at: 0)
