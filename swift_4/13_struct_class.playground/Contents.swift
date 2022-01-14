import UIKit


// Struct vs Class

struct SomeStruct {
    // Definition for struct
}

class SomeClass {
    // Definition for class
}


struct Resolution {
    var width = 0 // stored properties
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution() // instance structure
let someVideoMode = VideoMode() // instance of class


print(someResolution.width)
someVideoMode.resolution.width = 1280 // you can change properties for a class instance in let
print(someVideoMode.resolution.width)

// someResolution.width = 20 -> you can't change properties for a struct instance in let

// Copies and memory management

let vga = Resolution(width: 640, height: 480) // let can change values just in the initializator
vga.width
vga.height

let hd = Resolution(width: 1920, height: 1080)

var cinema = hd // copy of hd, create an entire copy
print("\(cinema.width) x \(cinema.height)")
cinema.width = 2048
print("\(cinema.width) x \(cinema.height)")
print("\(hd.width) x \(hd.height)")


enum CompassPoint {
    case north, south, east, west
}

var currentDirection = CompassPoint.north
let oldDirection = currentDirection // copy value no the reference, pass by value
currentDirection = .south

print(currentDirection)
print(oldDirection)


// Copy in class

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0


let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0 // Pass by reference so change the reference of tenEighty
tenEighty.frameRate

if tenEighty === alsoTenEighty {// to compare objects need to use ===
    print("Are the same object")
} else {
    print("Are differents")
}






