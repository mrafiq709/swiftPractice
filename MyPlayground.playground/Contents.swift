/**
 * Control Flow (Looping)
 */

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0

var type: String = "None"

/**
 * Here kind -> "Prime", "Fibonacci", "Square" and
 * numbers -> [2, 3, 5, 7, 11, 13], [1, 1, 2, 3, 5, 8], etc
 * number -> 2, 3, 5, 1, etc.
 */
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            type = kind
        }
    }
}
// print("Type: \(type), largest: \(largest)")

/**
 * Integer Type Array
 */

// Declare Empty array
var array: [Int] = []

// initializing with default value
array = Array(repeating: 0, count: 5)

// add item at the end of array
array.append(100)

// add item at the specific index
array[2] = 200

// Iteration array
for value in array{
    //print(value)
}

/**
 * while loop
 */

var n = 100
while n < 100 {
    n *= 2
}
//print(n)

var m = 100
repeat {
    m *= 2
} while m < 100
//print(m)

/**
 * for loop: "..<" means i < N, "..." means i <= N
 */
var N = 4
for i in 0..<N {
    //print(i, terminator:" ")
    
    if i == N-1 {
        //print(terminator:"\n")
    }
}

for i in 0...N {
    //print(i, terminator:" ")
}

/**
 * Functions:
 * "-> String" return type
 * "_" used for no lebel when calling function
 * "on:" custom label
 */

func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}


func greetNoRetun(person: String, day: String) {
    //print("Hello \(person), today is \(day).")
}

func greetCustomArgument(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}

var result: String

result = greet(person: "Bob", day: "Tuesday")
//print(result)

greetNoRetun(person: "Rafiq", day: "Sunday")

result = greetCustomArgument("John", on: "Wednesday")
//print(result)

/**
 * return multiple value from a function
 */
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}

let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])

// Can call by either label name or label number
//print(statistics.sum)
//print(statistics.2)
//print(statistics.max)
//print(statistics.1)

/**
 * Nested Function
 */
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}

let num =  returnFifteen()
//print(num)

/**
 * Function return another function
 */
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
let res = increment(7)
//print(res)

/**
 * A function can take another function as one of its arguments.
 */
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
var b = hasAnyMatches(list: numbers, condition: lessThanTen)
//print(b)

/**
 * We can write any code like bellow in the second brakets {}
 * map array values
 * TAG -> map, array mapping, array iteration map, sort array
 */
let temp = numbers.map({ (number: Int) -> Int in
    if number % 2 == 0{
        return number
    }
    return 0
})
print(temp)

print(numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
}))

var newNumber = ["10", "20"]
var str: String = ""
print(newNumber.map({(number: String) -> String in
    str += number
    return str
}))

// We can also omit the type
let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)

// We can also pass number and can omit the paramiter name
// array sorting
let sortedNumbers = numbers.sorted { $0 < $1 }
print(sortedNumbers)
