import UIKit
import Foundation

//Int

let age: UInt8 = 31
let minValueU = UInt8.min
let maxValueU = UInt8.max

let minValue = Int8.min
let maxValue = Int8.max

// Decimals

let f1: Float = 3.1415376212123
let d1: Double = 3.1415376212123

let meaningOfLife = 42 // Int | Int64
let pi = 3.14159 // Double
let anotherPI = 3 + 0.14159 // Double

type(of: anotherPI)

//Numeric Literals

let decimalInteger = 17 // 1*10 + 7
let binaryInteger = 0b10001 // 1*2^4 + 0*2^3 + 0*2^2 + 0*2^1 + 1*2^0
let octalInteger = 0o21 // 2*8^1 + 1*8^0
let hexadecimalInteger = 0x11 // 1*16^1 + 1*16^0

let milion = 1_000_000

let data1: UInt16 = 256
let data2: UInt8 = 1

// data1 + data2 cannot sum int8 and int16
let data3 = data1 + UInt16(data2)

let three = 3
let decimalNumber = 0.14159
let piNum = Double(three) + decimalNumber
let integerPI = Int(piNum)


typealias AudioSample = UInt16
AudioSample.max // UInt16.max
