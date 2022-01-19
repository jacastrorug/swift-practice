import UIKit


// Constructors

struct Fahrenheit {
    
    var temperature: Double
    
    init() {
        self.temperature = 32
    }
    
}

var f1 = Fahrenheit()


struct Celcius {
    
    var temperature: Double
    
    init(fromFahrenheit fahrenheit: Double) {
        self.temperature = (fahrenheit - 32) / 1.8
    }
    
    init(fromKelvin kelvin: Double) {
        self.temperature = kelvin - 273.15
    }
    
    init(_ celsius: Double) {
        self.temperature = celsius
    }
    
}

let boilingPointOfWater = Celcius(fromFahrenheit: 212)
let freezingPointOfWater = Celcius(fromKelvin: 273.15)


struct Color {
    let red, green, blue: Double
    
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    
    init(white: Double) {
        self.red = white
        self.green = white
        self.blue = white
    }
    
}

let magenta = Color(red: 1, green: 0, blue: 1)
let halfGre = Color(white: 0.5)
let green = Color(red: 0, green: 1, blue: 0)

let bodyTemperature = Celcius(20)

class SurveyQuestion {
    let text: String
    var response: String? // this became not requiered in constructors
    
    init(text: String) {
        self.text = text
    }
    
}

let q1 = SurveyQuestion(text: "Do you like tacos?")
q1.response = "Yes, I love it!"


// Designated -> Designated super class
// Convenience -> Another init of same kind
// The las init called always should be designated


class Vehicle {
    
    var numberOfWheels = 0
    var description: String {
        return "\(numberOfWheels) wheels"
    }
    
}

let vehicle = Vehicle()
vehicle.description


class Bicycle: Vehicle {
    
    override init() {
        super.init()
        numberOfWheels = 2
    }
    
}

let bicycle = Bicycle()
bicycle.description


class Hoverboard: Vehicle {
    var color: String
    
    init(color: String) { // Initializer by convenience
        self.color = color
        super.init() // not needed
        
        // Here implicit always call super.init()
    }
    
    override var description: String {
        return "\(super.description) in the color \(self.color)"
    }
    
}

let hoverboard = Hoverboard(color: "Blue")
hoverboard.description


enum TemperatureUnit {
    case kelvin, celsius, fahrenheit
    
    init?(symbol: Character) {
        switch symbol {
            case "K":
                self = .kelvin
            case "C":
                self = .celsius
            case "F":
                self = .fahrenheit
            default:
                return nil
        }
    }
    
}

let someUnit = TemperatureUnit(symbol: "X")


class Product {
    
    let name: String
    
    init?(name: String) {
        if name.isEmpty {
            return nil
        }
        self.name = name
    }
    
}


class CartItem: Product {
    let quantity: Int
    
    init?(name: String, quantity: Int) {
        if quantity < 1 {
            return nil
        }
        self.quantity = quantity
        super.init(name: name)
    }
    
}

if let someSocks = CartItem(name: "Socks", quantity: 3) {
    print("\(someSocks.name) - \(someSocks.quantity)")
}


class Bank {
    
    static var coinsInBank = 2_000
    
    static func distribute(coins numberOfCoinsRequested: Int) -> Int {
        let numberOfCoinsToVend = min(numberOfCoinsRequested, coinsInBank)
        coinsInBank -= numberOfCoinsToVend
        
        return numberOfCoinsToVend
    }
    
    static func receive(coins: Int) {
        coinsInBank += coins
    }
    
}

class Player {
    var coinsInPurse: Int
    
    init(coins: Int) {
        self.coinsInPurse = Bank.distribute(coins: coins)
    }
    
    func win(coins: Int) {
        self.coinsInPurse += Bank.distribute(coins: coins)
    }
    
    deinit {
        Bank.receive(coins: self.coinsInPurse)
    }
    
}



var playerOne: Player? = Player(coins: 100)
Bank.coinsInBank // 1900
playerOne!.win(coins: 2_000)
Bank.coinsInBank // 0

playerOne = nil // execute deinit
Bank.coinsInBank // 2000
