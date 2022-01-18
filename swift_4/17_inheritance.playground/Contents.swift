import UIKit


class Vehicle {
    
    var currentSpeed = 0.0
    var description: String {
        get {
            return "Traveling at \(currentSpeed) km/h"
        }
    }
    
    func makeNoise() {
        // Do nothing, vecause this depends of the kind of vehicle
        print("No noise specified")
    }
    
}

let someVehicle = Vehicle()

someVehicle.description
someVehicle.currentSpeed = 100
someVehicle.description


class Bicycle: Vehicle {
    
    var hasBasket = false
    
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15

print(bicycle.description)


class Tandem: Bicycle { // Kind of bicycle with 2 or 3 seats
    var currentNumberOfPassengers = 0
}

let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22

print(tandem.description)


class Train: Vehicle {
    
    var numberOfWagons = 0
    
    override func makeNoise() {
        print("Chooo Chooo")
    }
    
}

let train = Train()
train.makeNoise()


class Car: Vehicle {
    
    var gear = 1
    override var description: String {
        return super.description + " with the gear \(gear)"
    }
    
}

let car = Car()
car.currentSpeed = 55
car.gear = 3

print(car.description)


class AutomaticCar: Car {
    
    override var currentSpeed: Double {
        didSet {
            self.gear = Int(currentSpeed / 15.0) + 1
        }
    }
    
}

let automatic = AutomaticCar()
automatic.currentSpeed = 65
automatic.description


