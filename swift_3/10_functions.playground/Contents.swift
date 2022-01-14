import UIKit

func greeting(person: String) -> String {
    let greet = "Hi, \(person)!!"
    
    return greet
}

greeting(person: "Julian")
greeting(person: "Juan Carlos")

func sayHelloWorld() -> String {
    return "Hello World"
}

sayHelloWorld()

func greeting2(name: String, isMale: Bool, age: UInt8) -> String {
    if isMale {
        return "Welcome \(age >= 18 ? "Mr." : "yougn") \(name)"
    }
    
    return "Welcome \(age >= 18 ? "Ms." : "miss") \(name)"
}

greeting2(name: "Julian", isMale: true, age: 15)
greeting2(name: "Laura", isMale: false, age: 19)


// Input | Output params

// 1 input parameter 0 output parameter
func greeting3(person: String) {
    print("Hi, \(person)!!")
}

greeting3(person: "Julian")

// 1 parameter and 1 output parameter int
func printAndCount(string: String) -> Int {
    print(string)
    
    return string.count
}

func printWithoutCounting(string: String) {
    let _ = printAndCount(string: string)
}

printAndCount(string: "Hi, how is it going?")
printWithoutCounting(string: "Hi, how is it going?")

func minMax(array: [Int]) -> (min: Int, max: Int)? {
    
    if array.isEmpty {
        return nil
    }
    
    var min = array[0]
    var max = array[0]
    
    for item in array[1..<array.count] {
        min = item < min ? item : min
        max = item > max ? item : max
    }
    
    return (min, max)
    // return (min: min, max: max) this option works too
}

let arr = [1, 3, 9, 20, 22, -1]
let bounds = minMax(array: arr) ?? (0, 0)

print("The values are between \(bounds.min) and \(bounds.max)")


func someFunction(f1 firstParamName: Int, f2 secondParamName: Int = 6) {
    // inside function firstParamName, when you call the function can be f1
 
    print(firstParamName + secondParamName)
}

someFunction(f1: 10, f2: 20)
someFunction(f1: 20)


func greetingTown(_ person: String, from hometown: String) -> String {
    return "Hi \(person) is a pleasure that you visited us from \(hometown)"
}

greetingTown("Julian", from: "Bogotá")


func mean(_ numbers: Double...) -> Double {
    var total: Double = 0
    print(type(of: numbers)) // [Double]
    
    for number in numbers {
        total += number
    }
    
    return total / Double(numbers.count)
}

mean(1, 2, 3, 4, 5)
mean(10, 10, 20, 10)
mean(-1, -1, 2, 3, 4)


var x = 5

func addOne(number: Int) {
    // number += 1 number param is constant
    var number2 = number
    number2 += 1
    print("The number now have the value: \(number)")
}
addOne(number: x)

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let tempA = a
    a = b
    b = tempA
}

var someInt = 3
var otherInt = 7

print("Some int: \(someInt), other int: \(otherInt)")
swapTwoInts(&someInt, &otherInt) // pass by reference with &
print("Some int: \(someInt), other int: \(otherInt)")

// swapTwoInts(5, 10) cannot pass immutable value as inout


// Function Types

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
} // (Int, Int) -> Int -> type of the function

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
} // (Int, Int) -> Int -> type of the function


func prinHW() {
    print("Hello world")
} // () -> void


var mathFunction: (Int, Int) -> Int = addTwoInts

mathFunction(1, 2) // 3, because is using addTwoInts func

mathFunction = multiplyTwoInts

mathFunction(2, 2) // 4, because now is using multiplyTwoInts func


func printMathResult(_ mathFunc: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunc(a, b))")
}

printMathResult(multiplyTwoInts, 5, 9) // 45

func stepForward(_ input: Int) -> Int {
    return input + 1
}

func stepBackward(_ input: Int) -> Int {
    return input - 1
}

stepForward(5) // 6
stepBackward(5) // 4

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

var value = 7
var move = chooseStepFunction(backward: value > 0)

while value != 0 {
    print("\(value)...")
    value = move(value)
}
print("Zero....")

// Nested functions

func chooseStepFunction2(backward: Bool) -> (Int) -> Int {
    
    func stepForward2(_ input: Int) -> Int {
        return input + 1
    }

    func stepBackward2(_ input: Int) -> Int {
        return input - 1
    }
    
    return backward ? stepBackward2 : stepForward2
}

value = -10
move = chooseStepFunction2(backward: value > 0)

while value != 0 {
    print("\(value)...")
    value = move(value)
}
print("Zero....")
