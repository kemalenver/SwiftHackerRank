import Foundation

extension Character {
    
    func unicodeScalarCodePoint() -> Int {
        
        let characterString = String(self)
        
        return characterString.unicodeScalarCodePoint()
    }
}

extension String {
    
    func unicodeScalarCodePoint() -> Int {
        
        let scalars = self.unicodeScalars
        
        return Int(scalars[scalars.startIndex].value)
    }
}

let n = 10
let s = "beabeefeab"

func longestAlternatingString(s: String) -> Int {
    
    var letters = Array(repeating: Array(repeating: Character(" "), count: 26), count: 26)
    var values = Array(repeating: Array(repeating: 0, count: 26), count: 26)
    
    for c in s.characters {
    
        // This is basically the difference between our character and the start of the alphabet 'a'
        // Which will give an index between 0 and 26
        let index = c.unicodeScalarCodePoint() - 97
        
        for i in 0..<26 {
            
            if letters[index][i] != c && values[index][i] != -1 {
                letters[index][i] = c
                values[index][i] += 1
            } else {
                values[index][i] = -1;
            }
            
            if letters[i][index] != c && values[i][index] != -1 {
                letters[i][index] = c
                values[i][index] += 1
            } else {
                values[i][index] = -1;
            }
        }
    }
    
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

print(longestAlternatingString(s: s))