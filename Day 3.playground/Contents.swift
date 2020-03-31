import Cocoa

// now some information about arithmetic operations
let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

let remainder = 13 % secondScore

// Swift also supports operator overloading
// so, we can sum strings
let fakers = "Fakers gonna "
let action = fakers + "fake"

// and arrays
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

// But we can`t mix types –– we can`t add integer to a string for example
// Swift contains shorthand operators += /= -= and *=
var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

// Comparisom operators
firstScore == secondScore
firstScore != secondScore

firstScore < secondScore
firstScore >= secondScore

// also work with strings
"Taylor" <= "Swift"

// Conditions syntaxis
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("Blackjack!")
} else if firstCard + secondCard == 2{
    print("Aces")
} else {
    print("Regular combo")
}

// We can combine conditions using && and ||
let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

// Ternary operation syntaxis
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")


// Swift also has switch operator
let weather = "sunny"

//fallthrough operator allows switch to continue on to the next case
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

// In swift we can use range operator ..< and ...
// It can be helpful with switches
score = 85

switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}
