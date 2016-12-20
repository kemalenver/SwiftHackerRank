
import Foundation

var inputs = ["cde", "abc"] // 4

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}


func calculateNumberOfChanges(a: String, b: String) -> Int {
    
    // As usual we are going ascii.  97 is the letter a.  We get an index between 0 and 25
    
    var frequencyA = [Int](repeating: 0, count: 26)
    var frequencyB = [Int](repeating: 0, count: 26)
    
    let sA = a.utf8
    let sB = b.utf8
    
    for character in sA {
        
        let idx = Int(character - 97)
        frequencyA[idx] += 1
    }
    
    for character in sB {
        
        let idx = Int(character - 97)
        frequencyB[idx] += 1
    }
    
    var count = 0
    for i in 0..<26 {
       
        let difference = abs(frequencyA[i] - frequencyB[i])
        count += difference
    }

    return count
}

let a = readLine()!
let b = readLine()!

let numberOfChanges = calculateNumberOfChanges(a: a, b: b)

print(numberOfChanges)

