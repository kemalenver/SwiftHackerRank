import Foundation

// I will be redoing this one using a frequency list and a set of combinations
// which I think is more efficient

var inputs = ["10", "beabeefeab"]

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

let n = Int(readLine()!)
let string = readLine()!

func longestAlternatingString(input: String) -> Int {
    
    var characters = Array(repeating: Array(repeating: 0, count: 26), count: 26)
    var values = Array(repeating: Array(repeating: 0, count: 26), count: 26)
    
    for character in input.utf8 {
    
        // This is the difference between the code points of character and 'a' which will give an index between 0 and 26
        let characterCodePoint = Int(character)
        let idx = characterCodePoint - 97
        
        for i in 0..<26 {
            
            if characters[idx][i] != characterCodePoint && values[idx][i] != -1 {
                
                characters[idx][i] = characterCodePoint
                values[idx][i] += 1
            } else {
                values[idx][i] = -1;
            }
            
            if characters[i][idx] != characterCodePoint && values[i][idx] != -1 {
                
                characters[i][idx] = characterCodePoint
                values[i][idx] += 1
            } else {
                values[i][idx] = -1;
            }
        }
    }
    
    // Find the largest string in the matrix
    var largestString = 0
    
    for i in 0..<26 {
        
        for j in 0..<26 {
            
            if values[i][j] > largestString {
                largestString = values[i][j]
            }
        }
    }
   
    return largestString > 1 ? largestString : 0
}

print(longestAlternatingString(input: string))
