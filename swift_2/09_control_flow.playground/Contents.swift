import UIKit

// LOOPS

// For in

let names = ["Julian Castro", "Juan Carlos", "Miguel"]

for name in names {
    print("Hi \(name)")
}

let numberOfLegs = ["spider": 8, "ant": 6, "dog": 4]

for (animalName, legCount) in numberOfLegs {
    print("The \(animalName) have \(legCount) legs")
}

for idx in 1...5 { // range inclusive [1, 5]
    print("\(idx) x 3 = \(idx * 3)")
}

let base = 2
let power = 10
var answer = 1

for _ in 1...power { // replace idx for _ because idx is not necessary
    answer *= base
    print("base: \(base) pow \(power) = \(answer)")
}

var hour = 9
let minutes = 60
for tickMark in 0 ..< minutes {
    print("\(hour) : \(tickMark)")
}

hour = 9
let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) { // step by step every 5
    print("\(hour) : \(tickMark)")
}



// WHILE

var i = 0
while i <= 10 {
    i += 1
}

print(i) // 11

repeat {
    i += 1
} while i <= 10

print(i) // 12


// Find primes, Eratostenes

var startNumber = 2
var primeNumbers: [Int] = []

while startNumber <= 100 {
    
    var isPrime = true
    for idx in 2 ..< startNumber {
        if startNumber % idx == 0 {
            isPrime = false
            break
        }
    }
    
    isPrime ? primeNumbers.append(startNumber) : nil
    startNumber += 1
    
}

primeNumbers


// IF and ELSE

var temp = 13

if temp <= 15 {
    print("It's cooling, turn on the heating.")
} else {
    print("Turn off the heating.")
}

// SWITCH

let someCharacter: Character = "z"

switch someCharacter {
    case "a", "A": // both cases
        print("First alphabet letter")
    case "z", "Z":
        print("Last aplhabet letter")
default:
    print("Unknow letter")
}


// SWITCH and ranges

let moons = 62
let phrase = "Moons in Saturn"
let naturalCount: String

switch moons {
    case 0:
        naturalCount = "Don't have"
    case 1 ..< 5:
        naturalCount = "Some"
    case 5 ..< 12:
        naturalCount = "Many"
    default:
        naturalCount = "To many!!"
}

print("\(naturalCount) \(phrase)")


// SWITCH and touples

let somePoint = (1, 1)

switch somePoint {
    case (0, 0):
        print("The point \(somePoint) is the origin")
    case (_, 0):
        print("The point \(somePoint) is on the X axis")
    case (0, _):
        print("The point \(somePoint) is on the Y axis")
    case (-2...2, -1...5):
        print("The point \(somePoint) is between [-2, 2] in x and [-1, 5] in X")
    default:
        print("The point \(somePoint) is at some part!")
}


let anotherPoint = (2, 0)

switch anotherPoint {
    case (let x, 0):
        print("The X value is: \(x)")
    case (0, let y):
        print("The Y value is \(y)")
    case let (x, y) where x == y:
        print("The X and Y value are equals")
    case (let x, let y):
        print("The X value is \(x) and Y value is \(y)")
}

// Control Transfer Sentences - continue, break, fallthrough, return throw

let sentence = "Las grandes mentes piensan igual"
var filteredSentence = ""
let charactersToRemove:[Character] = ["a", "e", "i", "o", "u"]

for ch in sentence {
    if charactersToRemove.contains(ch){
        // do nothing
        continue
    }
    filteredSentence.append(ch)
    
    if ch == "d" {
        break
    }
    
}

print(filteredSentence)

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is: "

switch integerToDescribe {
    case 2, 3, 5, 7, 11, 13, 17, 19 :
        description += "primer number, "
        fallthrough
    default:
        description += "integer number"
    
}

print(description)


// var people: [String: Any] = ["name": "Julian Castro", "age": 31]
var people = ["name": "Julian Castro", "age": 31] as [String : Any]

func test(){
    guard let surname = people["surname"] else {
        // do nothing
        print("Dont have surname")
        return
    }
    // exist
    print(surname)
}

test()

// available

if #available(iOS 12, macOS 10.12, *) {
    // Actions for iOS 12+, macOS 10.12+
} else {
    
}

var a:String
