import UIKit

// Subscrips

struct TimesTable {
    let multiplier: Int
    
    subscript(index: Int) -> Int {
        return multiplier * index
    }
    
}

let threeTimesTables = TimesTable(multiplier: 3)
print("6 x 3 = \(threeTimesTables[6])")

for idx in 0...10 {
    print("\(idx) * 3 = \(threeTimesTables[idx])")
}


enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune, error = 404
    
    static subscript(n: Int) -> Planet {
        return Planet(rawValue: n) ?? Planet.error
    }
    
}

let mars = Planet[4]
print(mars)

let error = Planet[100]
print(error)


// Matrix with subindex

class Matrix {
    
    var mat: [[Int]]
    
    init(mat: [[Int]]) {
        self.mat = mat
    }
    
    subscript(x: Int, y: Int) -> Int {
        return self.mat[x][y]
    }
    
}


let matrix = Matrix(mat: [[1, 2, 3], [4, 5, 6], [7, 8, 9]])
matrix[1,2]


// Exercise matrix

struct Matrix2 {
    
    let rows: Int, columns: Int
    var grid: [Double]
    
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    
    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && column >= 0 && row < self.rows && column < self.columns
    }
    
    subscript(row: Int, column: Int) -> Double {
        
        get {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row * self.columns) + column]
        }
        
        set {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            
            grid[(row * self.columns) + column] = newValue
        }
        
    }
    
}


var matrix2 = Matrix2(rows: 5, columns: 5)
matrix2
matrix2[0, 1] = 1.5
matrix2[1, 0] = 2.5
matrix2


for row in 0..<matrix2.rows {
    for col in 0..<matrix2.columns {
        print(matrix2[row, col], separator: "", terminator: " ")
    }
    print("")
}

