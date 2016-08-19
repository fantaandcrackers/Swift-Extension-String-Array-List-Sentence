# SwiftArray-MakeListSentence
Swift Extension for making a sentence listing strings in a String Array.

Uses the ","   ","   "and" design pattern for creating a sentence.

Examples:


     ["Apple"] -> "Apple"
     
     
     ["Apple", "Orange"] -> "Apple and Orange"
     
     
     ["Apple", "Orange", "Pear"] -> "Apple, Orange, and Pear"


Source Code:

~~~~
extension String: CustomStringConvertible {

    // Necessary to add conformance to the protocol to the String Type
    public var description: String { return self }

}

extension Array where Element: CustomStringConvertible {

    /**
     Makes a sentence listing the strings in the array
     - Ex: ["Apple"] -> "Apple"
     - Ex: ["Apple", "Orange"] -> "Apple and Orange"
     - Ex: ["Apple", "Orange", "Pear"] -> "Apple, Orange, and Pear"
    */
    func makeListSentence() -> String {
        switch count {
        case 0: return ""
        case 1: return "\(self[0])"
        case 2: return "\(self[0]) and \(self[1])"
        default: return "\(dropLast().reduce("") { "\($0)\($1), " }) and \(last)"
        }
    }

}
~~~~
