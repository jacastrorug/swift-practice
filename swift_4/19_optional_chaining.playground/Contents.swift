import UIKit


class Person {
    
    var residence: Residence?
    
}

class Residence {
    
    var numberOfRooms = 1
    
}

let edgar = Person()

// let roomCount = edgar.residence!.numberOfRooms

if let roomCount = edgar.residence?.numberOfRooms {
    print("The hous of edgar have \(roomCount) rooms")
} else {
    print("Edgar is homeless")
}

edgar.residence = Residence()

if let roomCount = edgar.residence?.numberOfRooms {
    print("The hous of edgar have \(roomCount) rooms")
} else {
    print("Edgar is homeless")
}


class Person2 {
    var residence: Residence2?
}

class Residence2 {
    var rooms = [Room]()
    var address: Address?
    var numberOfRooms: Int {
        return rooms.count
    }
    
    subscript(i: Int) -> Room {
        get {
            return self.rooms[i]
        }
        set {
            rooms[i] = newValue
        }
    }
    
    func printNumberOfRooms() {
        print("The number of rooms is \(self.numberOfRooms)")
    }
    
}

class Room {
    let name: String
    
    init(name: String) {
        self.name = name
    }
}


class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    
    func buildingIdentifier() -> String? {
        if let buildingNumber = self.buildingNumber, let steet = self.street {
            return "\(buildingNumber), \(steet)"
        }else if self.buildingName != nil {
            return self.buildingName
        } else {
            return nil
        }
    }
    
}


let julian = Person2()

if let roomCount = julian.residence?.numberOfRooms {
    print("The hous of Julian have \(roomCount) rooms")
} else {
    print("Julian is homeless")
}

func createAddress() -> Address {
    print("The call was called")
    
    let someAddress = Address()
    someAddress.buildingNumber = "13"
    someAddress.street = "Street of Bogotá"
    
    return someAddress
}

julian.residence?.address = createAddress() // if residence exist this will be set
julian

julian.residence?.printNumberOfRooms() // don't will be executed

if julian.residence?.printNumberOfRooms() != nil {
    print("I can get the number of rooms")
} else {
    print("I cannot get the number of rooms")
}

if (julian.residence?.address = createAddress()) != nil {
    print("Config the ressidence was possible")
} else {
    print("We don't know where Julian lives")
}


if let firstRoomName = julian.residence?[0].name {
    print("The first room is of \(firstRoomName)")
} else {
    print("I don't know who is the owner of first room")
}


julian.residence?[0] = Room(name: "Bathroom") // don't will set because residence is nil


let julianHouse = Residence2()
julianHouse.rooms.append(Room(name: "Bathroom"))
julianHouse.rooms.append(Room(name: "Living Room"))
julianHouse.rooms.append(Room(name: "Kitchen"))

julian.residence = julianHouse


if let firstRoomName = julian.residence?[0].name {
    print("The first room is: \(firstRoomName)")
} else {
    print("I don't know who is the owner of first room")
}

julian.residence?.address = createAddress()


if let julianStreet = julian.residence?.address?.street {
    print("The house of Julian is in the street: \(julianStreet)")
} else {
    print("I don't know where Julian lives")
}

julian


if let buildingIdentifier = julian.residence?.address?.buildingIdentifier() {
    print("Julian lives in: \(buildingIdentifier)")
}

if let beginsWith13 = julian.residence?.address?.buildingIdentifier()?.hasPrefix("13") {
    print("Julian lives in the 13 number")
} else {
    print("Julian doesn't live in the 13 number")
}
