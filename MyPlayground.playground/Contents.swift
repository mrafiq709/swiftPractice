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

for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            type = kind
        }
    }
}
print("Type: \(type), largest: \(largest)")

/**
 * Integer Type Array
 */

// Declare Empty array
var array: [Int] = []

// initializing with default value
array = Array(repeating: 0, count: 10)

// add item at the end of array
array.append(100)

// add item at the specific index
array[2] = 200

// Iteration array
for value in array{
    print(value)
}
