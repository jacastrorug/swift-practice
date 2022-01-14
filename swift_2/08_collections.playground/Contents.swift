import UIKit

/**
 Collections
 
 1. Arrays
 2. Sets
 3. Dictionaries
 
 */

//ARRAY

var someInts = [Int]() // constructor
someInts.count
someInts.append(31)
someInts.count

someInts = [] // make empty
someInts.count

var someDoubles = Array(repeating: 3.141592, count: 3) // 3 times the repeating
someDoubles.count

var arr = Array([1,2,3])

var moreDoubles = Array(repeating: 2.5, count: 4)
var aLotOfDoubles = someDoubles + moreDoubles // join arrays
aLotOfDoubles.count


var shoppingList: [String] = ["Chips", "Meet", "Onion"]
shoppingList.count

if shoppingList.isEmpty {
    print("Shopping list empty")
} else {
    print("Buy the items in the bag")
}


shoppingList.append("Water")
shoppingList += ["Totopos", "Guacamole"]

var firstElement = shoppingList[0] //
shoppingList[0] = "Eggs"

shoppingList
firstElement // Chips

shoppingList[5]
shoppingList[3...5]
shoppingList[4...5] = ["Chesse", "Chips"]
shoppingList

let chesse = shoppingList.remove(at: 4)
shoppingList

let _ = shoppingList.removeLast()
shoppingList


// iterations

for item in shoppingList {
    print(item)
}

for (idx, item) in shoppingList.enumerated() {
    print("Index: \(idx), item: \(item)")
}


// SET

var letters = Set<Character>()
letters.count
letters.insert("a")
letters.insert("h")
letters.insert("b")
letters.insert("b")

letters

var favouriteGames: Set<String> = ["Final Dantasy", "World of Warcraft", "Farcry", "Minecraft"]
favouriteGames.count

if favouriteGames.isEmpty {
    print("No favorite games.")
}

favouriteGames.insert("Metal Gear")

if let removedGame = favouriteGames.remove("Minecraft") {
    print("The game was removed: \(removedGame)")
}

if favouriteGames.contains("Metal Gear") {
    print("I love this game.")
}

for (idx, game) in favouriteGames.enumerated() {
    print("Index: \(idx), game: \(game)")
}

print("Sorted: ---")
for (idx, game) in favouriteGames.sorted().enumerated() {
    print("Index: \(idx), game: \(game)")
}


let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [2, 4, 6, 8]
let primeNumbers: Set = [2, 3, 5, 7]


// A union B
oddDigits.union(evenDigits).sorted()

// A intersection B
oddDigits.intersection(evenDigits)
evenDigits.intersection(primeNumbers).sorted()
oddDigits.intersection(primeNumbers).sorted()

// A - B
oddDigits.subtracting(primeNumbers).sorted()


// A + B = (A - B) U (B - A)
oddDigits.symmetricDifference(primeNumbers).sorted()
evenDigits.symmetricDifference(primeNumbers).sorted()

let houseAnimals:Set = ["cat", "dog"]
let farmAnimals:Set = ["cow", "pig", "chicken", "dog", "cat"]
let cityAnimals:Set = ["rat", "dove"]

houseAnimals.isSubset(of: farmAnimals) // true
farmAnimals.isSuperset(of: houseAnimals) // true

farmAnimals.isDisjoint(with: cityAnimals) // false


// DICTIONARY [k1: v1, k2:v2...]

var nameIntegers = [Int: String]()
nameIntegers[15] = "Fiveteen"
nameIntegers = [:] // Make empty


var airports: [String: String] = ["YYZ": "Toronto",
                                  "DUB": "Dublin",
                                  "PMI": "Palma de Mallorca"]

airports.count // 3

airports.isEmpty // false


airports["LHR"] = "London City Airport"
airports["LHR"] = "London Heathrow" // will replace the existing key

airports

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The wrong value was: \(oldValue)")
    
}

if let airportName = airports["DUB"] {
    print("The airpot of DUB is: \(airportName)")
}


airports["PMI"] = nil // delete the key PMI
airports

if let removedAirport = airports.removeValue(forKey: "DUB") {
    print("The element removed was: \(removedAirport)")
}

airports

for (key, value) in airports {
    print("Key: \(key) - Value: \(value)")
}

for airportKey in airports.keys { // array with all the keys like JS
    print(airportKey)
}

for airportName in airports.values { // array with all the values like JS
    print(airportName)
}

let airportKeys = [String](airports.keys)
let airportNames = [String](airports.values) // The cast is required, .values return Dictionary.Values obj


