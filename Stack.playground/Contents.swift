import UIKit


struct Stack<T> {
    private var myArray: [T] = []
    
    // Adding item to the Stack
    mutating func push(_ element: T) {
        myArray.append(element)
    }
    
    // Removing item from the Stack
    mutating func pop() -> T? {
        return myArray.popLast()
    }
    
    // If stack is empty then return nil
    func peek() -> T? {
        
        guard let topElement = myArray.last else {
            return nil
        }
        
        return topElement
    }
}

var stack = Stack<String>()

if stack.peek() == nil{
    print("Stack is Empty")
}
stack.push("Swift Arrays")
stack.push("Swift LinkedList")
stack.push("Swift Stack")

print(stack)

if stack.peek() == nil{
    print("Stack is Empty")
}
stack.pop()
stack.pop()
stack.pop()

if stack.peek() == nil{
    print("Stack is Empty")
}
stack.pop()
