import UIKit

func canThrowError() throws {
    
}

do{
    try canThrowError()
    // if comes here no error throwed
} catch {
  // error throwed
}

enum sandwichErrors: Error {
    case noFood
    case noIngredients
}

func makeASandwitch() throws {
    throw sandwichErrors.noFood
}


do {
    try makeASandwitch()
    //Lets eat it
} catch sandwichErrors.noIngredients {
    // Maybe we dont have en
    print("No ingredients")
} catch sandwichErrors.noFood {
    print("No fooooooood")
}

// Assertions and Pre conditions

let age = -5
// assert(age > 0, "The age should be positive")

// precondition(age > 0, "The age should be positive")

if age > 10 {
    print("You can access")
} else if age >= 0 {
    print("You can't access")
} else {
    // assertionFailure("The age should be positive")
}
