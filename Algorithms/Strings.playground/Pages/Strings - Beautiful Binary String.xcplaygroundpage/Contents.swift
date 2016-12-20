// Beautiful Binary String

import Foundation

var inputs = ["7", "0101010"]

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

func countSteps(input: String) throws -> Int {
    
    // Regex greedy count the substrings we do not like.
    let regex = try NSRegularExpression(pattern: "010", options: .caseInsensitive)
    
    let numberMatches = regex.numberOfMatches(in: input, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSRange(location: 0, length: input.characters.count))
    
    return numberMatches
}

var inputLength = Int(readLine()!)!

print( try countSteps(input: readLine()!))


// Swift 2 changes
//let regex = try NSRegularExpression(pattern: "010", options: .CaseInsensitive)
//
//let numberMatches = regex.numberOfMatchesInString(input, options: NSMatchingOptions(rawValue: 0) , range: NSRange(location: 0, length: input.characters.count))
