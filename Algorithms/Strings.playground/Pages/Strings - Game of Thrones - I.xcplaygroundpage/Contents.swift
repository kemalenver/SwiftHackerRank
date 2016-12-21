
import Foundation

var inputs = ["cdcdcdcdeeeef"] // YES

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}


func canBePalindrome(input: String) -> Bool {
    
    var frequency = [Int](repeating: 0, count: 26)
    
    let input = input.utf8
    
    for character in input {
        
        let idx = Int(character - 97)
        
        frequency[idx] += 1
    }
    
    var foundOdd = false
    for i in 0..<26 {
        
        let frequency = frequency[i]
        if frequency % 2 != 0 {
            if foundOdd {
                return false
            }
            foundOdd = true
        }
    }
    
    return true
}

let input = readLine()!

if canBePalindrome(input: input) {
    
    print("YES")
} else {
    
    print("NO")
}

