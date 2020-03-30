import Cocoa

// Arrays –– 0-based in Swift
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

// We can type
beatles[1]

// But beatles[4] or beatles[9] will return error
// Also we can use type annotations
let str_array : [String] = ["first", "second"]

// Sets are also exist
let colors = Set(["red", "green", "blue"])

// Of course, they can store only one copy of each element
let colors2 = Set(["red", "red", "blue"])

// Tuples –– fixed size, fixed type of values
var name = (first:"Taylor", last:"Swift")

// we can access elem by position
name.0

//or by given name
name.first

// we can change elem
name.first = "Barbara"

// But we can`t change type of elem
// name.first = 12 –– error

// So if you need fixed collection where each item has a name  –– use tuple
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")

// collection of unique items to chect whether a specific item is in there –– set
let set = Set(["aardvark", "astronaut", "azalea"])

// collection with duplicates or specific order –– array (most common)
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

// Dictionnaries can be created like this
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

// then we can access element by specified index
heights["Taylor Swift"]

// Type annotation also works
let dict : [String: Int] = ["first": 1, "second": 2]

// If we will try to access elem which doesn`t exist in dictionnary, it will return nil
dict["third"]

// it can be fixed by adding default
dict["third", default:3]

// Arrays, sets and dicts are called collections
// We can create empty collections
// Empty array
var results = [Int]()

// Or
results = Array<Int>()

// Set
var words = Set<String>()
var numbers = Set<Int>()

// Dict
var teams = [String: String]()

// Or
var teams2 = Dictionary<String, Int>()

// and add elem to empty dict
teams["Zenit"] = "Dzuba"

// We can create enumerations
enum Result {
    case success
    case failure
}

// And access its elements
let result4 = Result.failure

// We can create enums associated with some values
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

// Now we can add additional details
let talking = Activity.talking(topic: "football")

// Swift automatically assign 0-based raw value to each elem of enum
enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)

// but we can start from a different value
enum Planet2: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}
