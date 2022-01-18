import UIKit

// Methods, statics and class methods

class Counter {
    
    var count = 0
    
    func increment() { // instance method
        self.count += 1
    }
    
    func incremet(by amount: Int) {
        self.count += amount
    }
    
    func reset() {
        self.count = 0
    }
    
}

let counter = Counter()

counter.increment() // 1
counter.incremet(by: 10) // 11
counter.reset() // 0
counter.count = 11 // 11


struct Point {
    var x = 0.0
    var y = 0.0
    
    func isToTheRight(of x: Double) -> Bool { // instance method
        return self.x > x
    }
    
    mutating func moveBy(x deltaX: Double, y deltaY: Double) { // mutating function
        // self.x += deltaX
        // self.y += deltaY
        
        self = Point(x: self.x + x, y: self.y + y) // this works too
    }
    
}


var somePoint = Point(x: 4, y: 5)
somePoint.isToTheRight(of: 1) // true
somePoint.isToTheRight(of: 54) // false

somePoint.moveBy(x: 2, y: -3)


enum DifferentStateSwitch {
    case off, low, high
    
    mutating func next() {
        switch self {
            case .off:
                self = .low
            case .low:
                self = .high
            case .high:
                self = .off
        }
    }
}

var controllerStatus = DifferentStateSwitch.off

controllerStatus.next() // low
controllerStatus.next() // high
controllerStatus.next() // off



class SomeClass {
    class func someMethod() { // extensible func
        print("Hiiii!")
    }
    
    static func someOtherMethod() { // none extensible func
        
    }
}


struct LevelTracker {
    static var highestUnlockedLevel = 1
    var currentLevel = 1
    
    static func unlock(_ level: Int) {
        if level > highestUnlockedLevel {
            highestUnlockedLevel = level
        }
    }
    
    static func isUnlocked(_ level: Int) -> Bool {
        return level <= highestUnlockedLevel
    }
    
    mutating func advance(to level: Int) -> Bool {
        if !LevelTracker.isUnlocked(level) {
            return false
        }
        
        currentLevel = level
        return true
    }
    
}

class Player {
    var tracker = LevelTracker()
    let playerName: String // need a constructor or initializer
    
    init(playerName: String) {
        self.playerName = playerName
    }
    
    func complete(level: Int) {
        LevelTracker.unlock(level + 1)
        tracker.advance(to: level + 1)
    }
}

var player = Player(playerName: "Julian")
player.complete(level: 1)
player // level 2

player.complete(level: 7)

if player.tracker.advance(to: 7) {
    print("You can advance to level 7")
} else {
    print("The level 7 is blocked")
}







