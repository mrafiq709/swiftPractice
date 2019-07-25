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
}
let ace = Rank.ace
let aceRawValue = ace.rawValue

//print("\(ace), \(aceRawValue), \(Rank.eight.simpleDescription()), \(Rank.king.simpleDescription())")
