import UIKit

//<#Normal Parameter Passing#>
func passNormal(_ value: Int) -> Void{
    print("value is: \(value)")
}

// <#Douple Parameter Passing#>
func passDouple(_ coordinate: (lat: Double, long: Double)) -> Void{
    print("Co-ordinate: \(coordinate.lat) and \(coordinate.long)")
}

// <#Tripple Parameter Passing#>
func passTripple(_ triple: (lat: Double, long: Double, summary: String)) -> Void{
    print("lat: \(triple.lat), long: \(triple.long) and summary: \(triple.summary)")
}

//<#Array Passing#>
func passArray(_ arr: [String]) -> Void{
    for value in arr{
        print("value \(value)")
    }
}

// <#initialization#>

let coordinate: (lat: Double, long: Double) = (12345, -54321)

let tripple: (lat: Double, long: Double, summary: String) = (123, -321, "Right Place")

var arr: [String] = []
for i in 0..<10{
    arr.append("new \(i)")
}
arr.append("End")

//<#Function Calling#>
//<#Uncomment the function name which you are testing#>
//passNormal(1234)
//passDouple(coordinate)
//passTripple(tripple)
//passArray(arr)

