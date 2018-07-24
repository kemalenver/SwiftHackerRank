
import Foundation

var inputs = [
    
    "6",
    "aaabbb",   // 3
    "ab",       // 1
    "abc",      // -1
    "mnop",     // 2
    "xyyx",     // 0
    "xaxbbbxx"  // 1
]

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}


func numberOfRemovals(input: [UnicodeScalar]) -> Int {
    
    if input.count % 2 != 0 {
        return -1
    }
    
    var letters = [Int](repeating: 0, count: 26)

    let halfSize = input.count / 2
    
    let s1 = input[0..<halfSize]
    let s2 = input[halfSize..<input.count]
    
    // As usual we are going ascii.  97 is the letter a.  We get an index between 0 and 25
    for character in s1 {
        
        let idx = Int(character.value - 97)
        
        letters[idx] += 1
    }
    
    for character in s2 {
        
        let idx = Int(character.value - 97)
        
        letters[idx] -= 1
    }
    
    let total = letters.reduce(0) { (currentTotal, frequency) in
        return currentTotal + abs(frequency)
    }
    
    return total / 2
}

let n = Int(readLine()!)!

for _ in 0..<n {
    
    let input = readLine()!
    
    let convertedString = Array(input.unicodeScalars)
    
    print(numberOfRemovals(input: convertedString))
}
