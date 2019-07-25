// Sample Class and Object
class Shape {
    var numberOfSides = 0
    let constantString = "Hi"
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
    func hello(name: String) -> String {
        return "\(constantString) \(name)"
    }
}

var shape = Shape()
shape.numberOfSides = 7
//print(shape.hello(name: "Tom"))
//print(shape.simpleDescription())


class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
        self.numberOfSides = 10
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
    func hello() -> String {
        return "Hi, \(name)"
    }
}

var nameShap = NamedShape(name: "Jerry")
//print(nameShap.hello())
//print(nameShap.simpleDescription())

// Subclass: Square, Superclass NamdeShape
class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let test = Square(sideLength: 5.2, name: "my test square")
var a = test.area()
var des = test.simpleDescription()

//print(test.hello(), test.numberOfSides, a, des, separator: ", ", terminator: "\n")

// Subclass: Circle, Superclass: NamedShape
class Circle: NamedShape {
    var radius: Double
    
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
    }
    
    func area() -> Double {
        return 3.1416 * radius * radius
    }
    
    override func simpleDescription() -> String {
        return "A Circle with radius of \(radius)."
    }
}
let circle = Circle(radius: 2.5, name: "Circle")
var circleArea = circle.area()
var circleDesc = circle.simpleDescription()

//print("\(circle.hello()), Area: \(circleArea), \(circleDesc)")

// Subclass: EquilateralTriangle, Superclass: NamedShape
class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            // Here "newValue" Default variable for new value of perimeteer
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
// print(triangle.perimeter)
triangle.perimeter = 9.9
// print(triangle.sideLength)

/**
 * willSet -> run before setting a newValue
 * didSet -> run after setting a newValue
 */
class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}
var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.triangle.sideLength)
