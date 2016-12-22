
import Foundation

var inputs = ["hfchdkkbfifgbgebfaahijchgeeeiagkadjfcbekbdaifchkjfejckbiiihegacfbchdihkgbkbddgaefhkdgccjejjaajgijdkd"] // YES

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

func checkPossible(input: String.UTF8View) -> Bool {
    
    var frequency = [Int](repeating: 0, count: 26)
    
    for character in input {
        
        let idx = Int(character - 97)
        
        frequency[idx] += 1
    }
    
    var lowestFrequency = 0
    var highestFrequency = 0
    
    var changesMadeToLowest = 0
    var changesMadeToHighest = 0
    
    for i in 0..<26 {
        
        if frequency[i] != 0 {
            
            if frequency[i] < lowestFrequency {
                lowestFrequency = frequency[i]
            }
            
            if frequency[i] > highestFrequency {
                highestFrequency = frequency[i]
            }
            
            if frequency[i] > lowestFrequency {
                changesMadeToLowest += 1
            }

            if frequency[i] < highestFrequency {
                changesMadeToHighest += 1
            }
        }
    }
    
    return changesMadeToLowest <= 1 || changesMadeToHighest <= 1
}

let input = readLine()!.utf8

if checkPossible(input: input) {
    print("YES")
} else {
    print("NO")
}

