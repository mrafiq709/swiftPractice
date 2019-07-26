/**
 * Error Handling
 */
enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}


func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }else if printerName == "fire"{
        throw PrinterError.onFire
    }
    return "Job sent"
}

do {
    let printerResponse = try send(job: 1040, toPrinter: "Bi Sheng")
    //print(printerResponse)
    
    let printAnotherResponse = try send(job: 1010, toPrinter: "Never Has Toner")
    //print(printAnotherResponse)
} catch {
    //print(error)
}

do {
    let printerResponse = try send(job: 1440, toPrinter: "fire")
    //print(printerResponse)
} catch PrinterError.onFire {
    //print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
    //print("Printer error: \(printerError).")
} catch {
    //print(error)
}

/**
 * if it is throwing error but we want to not throw error, instead error
 * we will assign it nil if error found. Just put ? after try like bellow
 */
let printerSuccess = try? send(job: 1884, toPrinter: "Mergenthaler")
let printerFailure = try? send(job: 1885, toPrinter: "Never Has Toner")

//print("printerSuccess: \(printerSuccess)\nprinteFailure: \(printerFailure)")

/**
 * defer works like finally block , it will be exicuted at last
 */
var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(_ food: String) -> Bool {
    
    let result = fridgeContent.contains(food)
    if result {
        fridgeIsOpen = true
    }
    
    defer {
        fridgeIsOpen = false
    }
    
    fridgeIsOpen = true
    
    return result
}
fridgeContains("milk")
print(fridgeIsOpen)
