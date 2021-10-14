import Foundation

class Polygon {
    var no_of_sides: Int
    var interior_angle: Int
    var side_length: Int
    
    //default constructor of polygon class
    init() {
        self.no_of_sides = 5
        self.side_length = 7
        self.interior_angle = 128
    }
    
    func printNumOfSides() {
        print("Number of sides of a polygon is: \(self.no_of_sides)")
    }
    
    func printInteriorAngle() {
        print("Sum of Interior angles of a polygon is: \(self.interior_angle) degrees")
    }
    //calculate interior angle of a polygon
    func interiorAngle() {
        self.interior_angle = (self.no_of_sides - 2 ) * 180 
        print("Calculating interior angle of a polygon with \(self.no_of_sides) sides........")
    }
}

class Triangle:Polygon {
    var area: Double
    var perimeter: Int
    
    override init(){
        self.area = 0.0
        self.perimeter = 0
        super.init() 
    }
    
    func getSideLength() {
        print("Length of a side of equilateral triangle is: \(self.side_length)")
    }
    
    func setSideLength(length: Int) {
        self.side_length = length
    }
    
    func printArea() {
        print("Triangle area of length \(self.side_length) is: \(self.area)")
    }
    
    func calculateArea() {
        print("Calculating area of equilateral triangle with side length \(self.side_length)............")
        self.area = (1.73 * Double(self.side_length) * Double(self.side_length))/Double(4)
    }
    
    //adding additional function to calculate and print perimenter of triangle
    func calculatePerimeter() {
        self.perimeter = self.side_length * 3
        print("Calculating perimeter of equilateral triangle with side length \(self.side_length)............ is \(self.perimeter)")
    }
}

var t = Triangle()
t.no_of_sides = 7
t.side_length = 10
t.interiorAngle()
t.printInteriorAngle()

print("Enter length of a side of equilateral triangle: ")
var length: Int? = Int(readLine()!)
t.setSideLength(length: length!)
t.getSideLength()
t.calculateArea()
t.printArea()
t.calculatePerimeter()