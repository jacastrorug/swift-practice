import UIKit

enum SomeEnumeration {
    //Enum definition
}

enum CompassPoint {
    case NORTH
    case SOUTH
    case EAST
    case WEST
}


CompassPoint.EAST

enum Planet: Int {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

print(Planet.mercury.rawValue)


var directionToGo = CompassPoint.EAST
type(of: directionToGo)

directionToGo = .NORTH // Change enum value -> . = self ?

switch directionToGo {
    case .NORTH:
        print("We should go to the nort")
    case .SOUTH:
        print("We should go to the nort")
    case .EAST:
        print("We should go to the nort")
    case .WEST:
        print("We should go to the nort")
}


let somePlanet = Planet.earth
switch somePlanet {
    case .earth:
        print("Is a save place")
    default:
        print("Is not a save place (?)")
}

enum Beverage: CaseIterable { // CaseIterable is a protocol, like extend? or implement?
    case coffe, tea, juice, water
}

let numberOfChoices = Beverage.allCases.count
for beverage in Beverage.allCases {
    print(beverage)
}


// Enumarate for code bars

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 9987, 51226, 3) // like a constructor
productBarcode = .qrCode("ASDHFSDJFHK")

switch productBarcode {
    case let .upc(numberSystem, manufacturer, product, check):
        print("UPC: \(numberSystem), \(manufacturer), \(product), \(check)")
    case .qrCode(let productCode):
        print("QR: \(productCode)")
}

enum ASCCIControlCharacter: Character, CaseIterable {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

for ascii in ASCCIControlCharacter.allCases {
    print("\(ascii): \(ascii.rawValue)")
}


let earthOrder = Planet.earth.rawValue

let possiblePlanet = Planet(rawValue: 5) // optional

let planetPosition = 11

if let anyPlanet = Planet(rawValue: planetPosition) { // get by raw value
    print(anyPlanet)
} else {
    print("The planet does not exist")
}





