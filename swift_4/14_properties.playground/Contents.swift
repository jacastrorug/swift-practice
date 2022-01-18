import UIKit

// Stored properties

struct FixedLengthRange {
    var firstValue: Int // stored property
    let length: Int // stored property
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue = 6 // can change because rangeOf ThreeItems is var

let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
// rangeOfThreeItems.firstValue = 5 can't change because the instance use let


// Lazy Stored Properties

class DataImporter {
    var fileName = "data.txt"
}

class DataManager {
    lazy var importer = DataImporter() // instance the property just when this will be needed
    var data = [String]()
}


let manager = DataManager()
manager.data.append("Something")
manager.data.append("Testing")

manager // manager.importer = nil
manager.importer.fileName
manager // manager.importer = instance


// Computed properties

struct Point {
    var x = 0.0
    var y = 0.0
}

struct Size {
    var width = 0.0
    var height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point { // Computed property, get and set
        
        //Short way
        
        get {
            Point(x: origin.x + size.width/2, y: origin.y + size.height/2)
        }
        
        set {
            origin.x = newValue.x - size.width/2
            origin.y = newValue.y - size.height/2
        }
        
        /*
         
         Long way
         
         get {
             let centerX = origin.x + size.width/2
             let centerY = origin.y + size.height/2
             
             return Point(x: centerX, y: centerY)
         }
         set(newCenter) {
             origin.x = newCenter.x - size.width/2
             origin.y = newCenter.y - size.height/2
         }
         */
    }
}

var square = Rect(origin: Point(x: 0, y: 0), size: Size(width: 10, height: 10))
square.center // x: 5, y: 5

let initialSquareCenter = square.center
square.center = Point(x: 20, y: 20)


// Computed properties READ ONLY

struct Cuboid {
    var width = 0.0
    var height = 0.0
    var depth = 0.0
    
    var volume: Double { // read only = define just get
        get {
            return width * height * depth
        }
    }
    
}


let cuboId = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
cuboId.volume
// cuboId.volume = 10 read only property


// Property Observers


class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) { // before set the value
            print("The number of steps will up until \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue {
                print("The number of steps grown in \(totalSteps - oldValue) steps")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200

stepCounter.totalSteps = 520


// Type properties

struct SomeStruct {
    var counter = 10
    static var storedTypeProperty = "Class value!"
    static var computedTypeProperty: Int {
        return 1
    }
}

var instanceStr = SomeStruct()

var otherInstanceStr = SomeStruct()

// otherInstanceStr.storedTypeProperty can't access static variable from instances
SomeStruct.computedTypeProperty
SomeStruct.storedTypeProperty


enum SomeEnum {
    static var storedTypeProperty = "SomeValue"
    static var computedTypeProperty : Int {
        return 5
    }
}

SomeEnum.storedTypeProperty

class SomeClass {
    static var storedTypeProperty = "Some Value"
    static var computedTypeProperty: Int { // Can't be overrided by child
        return -9
    }
    
    class var overrideableComputedTypeProperty: Int { // Can be overrided by child
        return 10
    }
    
}
