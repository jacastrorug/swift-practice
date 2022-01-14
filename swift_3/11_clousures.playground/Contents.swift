import UIKit

/**
 Clousures
 */

// 1. Global functions
// 2. Nested functions
// 3. Clousure

let names = ["Julian", "Sebastian", "Jose", "Felipe"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

backward(names[0], names[2]) // true

var reversedNames = names.sorted(by: backward)
print(reversedNames)

/*
 
 { (params) -> return type in
 
    // clousure code
 
 }
 
 */

reversedNames = names.sorted(by: {(s1: String, s2: String) -> Bool in return s1 > s2})

reversedNames = names.sorted(by: {s1, s2 in s1 > s2})

reversedNames = names.sorted(by: { $0 > $1})

reversedNames = names.sorted(by: >)


// Trailing Clousures

func someFunctionThatTakesAClousure(clousure: () -> Void) {
    
}

someFunctionThatTakesAClousure(clousure: {
    
})

someFunctionThatTakesAClousure {
    // Add clousure here
}

reversedNames = names.sorted {$0 > $1}

let digitNames = [0: "zero", 1: "one", 2: "two", 3: "three", 4: "four", 5: "five", 6: "six",
                  7: "seven", 8: "eigth", 9: "nine"]


let numbers = [16, 58, 510, 2127]

let numberStrings = numbers.map {(number) -> String in
    var num = number
    var output = ""
    
    repeat {
        output = (digitNames[num%10] ?? "") + "-" + output
        num /= 10
    } while num > 0
    
    return output
}

print(numberStrings) // Mapping digits to string representation


// Capturing clousures

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    
    return incrementer
}

let incrementTen = makeIncrementer(forIncrement: 10)

incrementTen() // 10
incrementTen() // 20

let incrementSeven = makeIncrementer(forIncrement: 7)

incrementSeven() // 7
incrementSeven() // 14

var completionHandlers: [() -> Void] = []

func someFunctionWithEscapingClousure(completionHandler: @escaping() -> Void) {
    completionHandlers.append(completionHandler)
}

func someFunctionWithNonEscapingaClousure(clousure: () -> Void) {
    clousure()
}

class SomeClass {
    var x = 10
    
    func doSomething() {
        someFunctionWithEscapingClousure {
            self.x = 100 // if you don't scape need to specify where find the var
        }
        someFunctionWithNonEscapingaClousure {
            x = 200 // if you scape you can ommit the specification for x context
        }
    }
    
}

let cl = SomeClass()
cl.x
cl.doSomething()
cl.x


completionHandlers.count
completionHandlers[0]()
cl.x

