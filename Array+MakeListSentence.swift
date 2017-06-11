//
//  Array+Extensions.swift
//  Created by Arthur Shir and Josh Basch on 8/18/16.
//

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
        default: return "\(dropLast().reduce("") { "\($0)\($1), " })and \(last!)"
        }
    }
}
