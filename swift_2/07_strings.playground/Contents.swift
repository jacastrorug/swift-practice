import UIKit

// Strings

let someSring = "I'm a string" // literal string
var multilineString = """

    I'm a multi line string

""" // Multiline string

print(multilineString)


let wiseWords = "\" The imaginations is more important than the knowledge\" - Alber Einstein"
let dollarSign = "\u{24}"
let blackHeart = "\u{2665}"


let flagCO = "\u{1F1E8}" + "\u{1F1F4}"
let name = "Julian Castro"

let greeting = "Hello there, my name is \(name) and I'm from \(flagCO)"
print(greeting) // Hello there, my name is Julian Castro and I'm from 🇨🇴



// Initialization and mutability

var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty {
    print("Nothing.")
} else {
    print("The string have value")
}


var newSomeString = "A hourse"
newSomeString += " and a carriage"
newSomeString += " and a rider."

print(newSomeString)


// Mutability

var a = "A"
var b = "B"

print("a value: \(a), b value: \(b)") // a value: A, b value B

b = a

print("a value: \(a), b value: \(b)") // a value: A, b value A

b = "C"

print("a value: \(a), b value: \(b)") // a value: A, b value C

a = "D"

print("a value: \(a), b value: \(b)") // a value: D, b value B



// Characters


let fullName = "Julian Castro"

for ch in fullName {
    print(ch)
}
print(fullName.count) // 13

let exclamationMark: Character = "!" // This is a character, but with double quotes ""

let nameChars: [Character] = ["J", "u", "l", "i", "a", "n"]
var nameString = String(nameChars) // Julian by constructor string, String(array_char[])


let compoundName = "Julian " + "Castro"

nameString + String(exclamationMark)
nameString.append(exclamationMark)


// Test

let table = 4
for i in 0...9 {
    let count = i + 1
    let result = count * table
    let row = "\(count) * \(table) = \(result)"
    
    print(row)
}

// String index

let greetingS = "How it's going?"
greetingS[greetingS.startIndex]
// greetingS[greetingS.endIndex] this can't be possible endIndex is length
greetingS[greetingS.index(before: greetingS.endIndex)]
greetingS[greetingS.index(after: greetingS.startIndex)]

for idx in greetingS.indices {
    print("\(greetingS[idx]) - \(idx)") // idx is Index no an integer
}

for idx in greetingS.indices {
    print("\(greetingS[idx])", terminator: "") // will display: How it's going?
}

print(" ")

var welcome = "Hi"
welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf: ", how it's going?", at: welcome.index(before: welcome.endIndex))

welcome.remove(at: welcome.index(before: welcome.endIndex))

let range = welcome.index(welcome.endIndex, offsetBy: -6) ..< welcome.endIndex // range [length - 6, length]
welcome.removeSubrange(range)


// Sub-strings

let greeting2 = welcome
let index = greeting2.firstIndex(of: ",") ?? greeting2.endIndex
let firstPart = greeting2[..<index] // This is a part of the real string in memory

let newString = String(firstPart) // This is a new string based on the substring


// Prefix and sufix

let newGreeting = "Hi, I'm Julian Castro"

newGreeting.hasPrefix("Hi")
newGreeting.hasSuffix("ro")


let collection = ["Act 1 Scene 1", "Act 1 Scene 2", "Act 1 Scene 3", "Act 2 Scene 1", "Act 2 Scene 2"]

var act1SceneCount = 0
for scene in collection {
    if scene.hasPrefix("Act 1") {
        act1SceneCount += 1
    }
}

print("The number of scenes in act 1 is: \(act1SceneCount)")


// Unicode representation

let ghost = "!!Ghost!! 👻"

for codeUnit in ghost.utf8 {
    print(codeUnit, terminator: " ")
}

print(" ")

for codeUnit in ghost.unicodeScalars {
    print(codeUnit, terminator: " ")
}
