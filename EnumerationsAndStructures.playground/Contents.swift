/**
 * enum
 */
enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace :)"
        case .jack:
            return "jack :D"
        case .queen:
            return "queen :("
        case .king:
            return "king :v"
        default:
            return String(self.rawValue)
        }
    }
    
    func compareEnum() -> (f: Int, s: Int) {
        if Rank.five.rawValue < Rank.eight.rawValue {
            return (Rank.five.rawValue , Rank.eight.rawValue)
        }
        return (Rank.eight.rawValue, Rank.five.rawValue)
    }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue

//print("\(ace), \(aceRawValue), \(Rank.eight.simpleDescription()), \(Rank.king.simpleDescription())")

var comparedValue = Rank.five.compareEnum()

//print("\(comparedValue.f), \(comparedValue.s)")

if let convertedRank = Rank(rawValue: 11) {
    let threeDescription = convertedRank.simpleDescription()
    //print(threeDescription)
}

//------------------------------------------------------------------------------------------------

enum Suit {
    case spades, hearts, diamonds, clubs
    
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts nai"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()

//print("\(hearts), \(heartsDescription)")


// --------------------------------------------------------------------------------------------------

enum ServerResponse {
    case result(String, String)
    case failure(String)
}

let success = ServerResponse.result("6:00 am", "8:09 p")
let failure = ServerResponse.failure("Out of cheese.")

switch success {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure...  \(message)")
}

// --------------------------------------------------------------------------------------------------

/**
 * Structures
 */

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .eight, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()
print("\(threeOfSpades.rank.rawValue), \(threeOfSpades.simpleDescription()), \(threeOfSpades.rank.self)")
