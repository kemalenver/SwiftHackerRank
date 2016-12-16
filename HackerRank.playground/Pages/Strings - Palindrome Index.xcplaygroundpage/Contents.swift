
import Foundation

var inputs = [
    
    "6",
    "aaab",     // 3
    "baa",      // 0
    "aaa",      // -1
    "abcba",    // -1
    "xyyxy",    // 4
    "wcwwc"     // 0
]

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

// Performance of Swift strings and characters is really bad for tasks like this.
// Instead the input is converte to a primitive type that we can use instead UnicodeScalar

func PalindromeIndex(word: [UnicodeScalar]) -> Int {
    
    var index = -1
    
    var i = 0
    var j =  word.count - 1
    
    let half = Int(ceil(Double(word.count / 2)))
    
    while i < half {
        
        if word[i] != word[j] {
            
            index = word[i+1] == word[j] && word[i+2] == word[j-1] ? i : j
            break
        }
        
        i += 1
        j -= 1
    }
    
    return index
}


let n = Int(readLine()!)!

for i in 0..<n {
    
    var testCase = readLine()!
    
    let convertedString = Array(testCase.unicodeScalars)
    
    let index = PalindromeIndex(word: convertedString)
    
    print(index)
}
