import UIKit

// <# Normal Queue #>
struct Queue{
    var items: [String] = []
    //<#WHY MUTATING ?#>
    //<#There are two types of variable/funtion -> Refernce type and Value type#>
    //<#In enumerations and struct Value type is used, and it is not changable#>
    //<#If we want to change the Value/variable like value type by calling it's#>
    //<#instant then we have to use "mutating" keyword#>
    
    // Add in item into the Queue
    mutating func enqueue(_ element: String)
    {
        items.append(element)
    }
    
    // Remove item from the Queue
    mutating func dequeue() -> String?
    {
        if items.isEmpty {
            return nil
        }else{
            let tempElement = items.first
            items.remove(at: 0)
            return tempElement
            
        }
    }
}

//<# Testing the Queue #>
var queue = Queue()

queue.enqueue("First")
queue.enqueue("Second")
print(queue)
queue.dequeue()
print(queue)


//<# Generic Type Queue #>
// <# Here "T" means Any Type It will accept, That's why it's called Generic #>
struct QueueGeneric<T>{
    
    var items:[T] = []
    
    // Add item in the queue
    mutating func enqueue(_ element: T){
        items.append(element)
    }
    
    // Remove item from the Queue
    mutating func dequeue() -> T?
    {
        if items.isEmpty {
            return nil
        }else{
            let tempElement = items.first
            items.remove(at: 0)
            return tempElement
            
        }
    }
}

//<# Testing the Queue #>
var queueGeneric = QueueGeneric<Int>()

queueGeneric.enqueue(1)
queueGeneric.enqueue(2)
print(queueGeneric)
queueGeneric.dequeue()
print(queueGeneric)
