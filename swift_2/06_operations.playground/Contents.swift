import UIKit

/**
 Operators
 */

//Unary operators

let b = 10 // asignation "=" operator
var a = 5

a = b

let (x,y) = (1,2)

if a == b {
    print("The values of a: \(a) and b: \(b) are equals")
}

let five = 5
let minusFive = -five
let plusFive = -minusFive

var number = 5
number+=3
number-=1


// Binary operators

1 + 2
5 - 1
2 * 3
var res = 10.0/2.5

type(of: res)

9 / 4 // Regular devision but between integers
9 % 4 //
9.0/4 // Division with double result


// Comparations

1 == 1 // true
1 == 2 // false, regular comparation
1 != 2 // true

2 > 1 // true
2 < 1 // false
2 >= 2 // true
1 >= 1 // true

var name = "Julian Castro"

if name == "Julian Castro" {
    print("Welcome \(name), you are invited")
} else{
    print("Wow wow wow, who are u?")
}

(1, "Julian Castro") < (2, "Juan Gabriel") // True because the first part is true 1 < 2
(3, "Julian Castro") < (3, "Juan Gabriel") // False because the first part is false 1 < 2 and the second too Julian < Juan
(4, "Dog") == (4, "Dog") // True

// <, > or <= and >= doesn't work with boolean in tuples !!Important


// Ternary operators

let  contentHeight = 40
var hasImage = true
var rowHeight = 0

rowHeight = contentHeight + (hasImage ? 50 : 10) // Regular ternary if like javascript


// Nil Coalescing operator

let defaultAge = 18
var userAge: Int?

var ageToBeUsed = userAge ?? defaultAge


// Ranges

for idx in 1...5 { // Close range between 1 and 5 -> [1, 5]
    print(idx)
}

for idx in 1..<5 { // Open range between 1 and 5 -< [1, 5)
    print(idx)
}

let names = ["Julian", "Nicolas", "Juan Carlos"]
for i in 0 ..< names.count {
    print("The person \(i + 1) is: \(names[i])")
}

for name in names[1...]{
    print("The name for1 is: \(name)")
}

for name in names[...1]{
    print("The name for2 is: \(name)")
}


let range = ...5 // [-Infinity, 5]
range.contains(5) // true
range.contains(3) // true
range.contains(-4) // true



//Logic operators &&, || and !

let allowEntry = false

if !allowEntry {
    print("Access denied")
}


let enterDoorCode = true
let passRetinaScan = false

if enterDoorCode && passRetinaScan { // false
    print("Access Granted!!")
} else {
    print("Access Denied")
}


let hasMoney = true
let hasInvitation = false

if hasMoney || hasInvitation {
    print("Welcome to the party!!")
} else {
    print("You are no welcome here")
}


