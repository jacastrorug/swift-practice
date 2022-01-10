import UIKit

let orangesAreOrange = true
let foodIsDelicious = false

let isEnabled: Bool
let isAged: Bool

isAged = true

if isAged{
    print("You can access to the party")
} else {
    print("You cant access to the party")
}

var age: Int = 31

if age >= 18 {
    print("You can access 🎈")
} else {
    print("You cannot access 😭")
}

//TUPLE

let http404Error = (404, "Not found")

let (statusCode, statusMessage) = http404Error

print("Status code: \(statusCode), Message: \(statusMessage)")

print("Status code: \(http404Error.0), Message: \(http404Error.1)")

let http200Status : (status: Int, message: String)
http200Status = (status: 200, message: "Ok")

print("Status code: \(http200Status.status), Message: \(http200Status.message)")


// Optionals and Nil

let possibleAge = "31"
let convertedAge = Int(possibleAge) // Int?
let convertedAge2 = Int("paco") // nil

var serverResponseCode: Int? = 404
serverResponseCode = nil

type(of: serverResponseCode)


if  convertedAge != nil {
    print("The age of the user is null: \(convertedAge!)")
} else {
    print("The age of the user is null")
}


// Optional Binding

let surveyAnswer: String?

surveyAnswer = "42"

if let actualAnswer = surveyAnswer {
    // survey answer is not null
    print("The string is \(actualAnswer)")
} else {
    // survey answe is null
}

if let firstNumber = Int("4"),
   let secondNumber = Int("42"),
    firstNumber < secondNumber && secondNumber < 100{
    print("\(firstNumber) < \(secondNumber) < 100")
}

// Unwrap Implícito

let possibleString: String? = "Regular string (optional)"
let forcedString: String = possibleString!

let assumedString: String! = "String wrapped!!!! no optional"
let implicitString: String = assumedString // No problem

