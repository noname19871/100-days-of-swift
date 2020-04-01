import Cocoa

// for loop in Swift
for number in 1...10 {
    print("Number is \(number)")
}

// for loop with arrays
let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

// if we don`t need a constant from for loop we can use wildcard
print("Players gonna ")

for _ in 1...5 {
    print("play")
}

// While loop
var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

// Another way to use loop with condition –– repeat loop
number = 1

repeat {
    print(number)
    number += 1
} while number <= 20

print("Ready or not, here I come!")

// the difference between while and repeat –– while check condition before first run
while false {
    print("This is false")
}

// and repeat –– after
repeat {
    print("This is false")
} while false

// We can exit from loop with spesific condition
var countDown = 10

while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}

// if we want to exit from outer loop we should give it label
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}

// and now we can use break as always

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

// We can skip elements using continue
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}

// We can use while loops tp make infinite loops for some reasons
var counter = 0

while true {
    print(" ")
    counter += 1

    if counter == 273 {
        break
    }
}
