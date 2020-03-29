import Cocoa

// Create a variable (String variable)
var str = "Hello, playground"

// and change it
str = "Goodbye"

// create int variable
var age = 38

// It is also possible
var population = 8_000_000

// Multi line string syntaxis, but every line break contains \n symbol
// Multi line strings must start and end with 3 double quotes, which must be
// on their own lines
var multi_line_string = """
This goes over
multiple lines
"""

// Multi line string without \n - just for format code neatly
var multi_line_string2 = """
This goes over \
multiple lines
"""

// Double variable
var pi = 3.141

// Boolean variable
var awesome = true

// String interpolation - we can put a variable into a string
var score = 85
str = "Your score was \(score)"

//We can do it as many times as we want
var results = "The test results are here: \(str)"

// Constants - we should use them whenever we don`t want to change the value in variable
let taylor = "swift"

//Swift automatically assign type to a variable and constant based on
// what value it`s given when it`s created
// So, this will be String type constant
let tmp = "Hello"

//We can explicitly show types of our data
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true
