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
    }
    return "Job sent"
}

do {
    let printerResponse = try send(job: 1040, toPrinter: "Bi Sheng")
    print(printerResponse)
    
    let printAnotherResponse = try send(job: 1010, toPrinter: "Never Has Toner")
    print(printAnotherResponse)
} catch {
    print(error)
}
