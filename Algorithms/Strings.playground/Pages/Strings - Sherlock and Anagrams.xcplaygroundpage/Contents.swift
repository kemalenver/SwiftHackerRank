
import Foundation

var inputs = ["5", "ifailuhkqq", "hucpoltgty", "ovarjsnrbf", "pvmupwjjjf", "iwwhrlkpek"] // 3 2 2 6 3

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}


func generateAllSubStrings(input: String) -> [String: Int] {
    
    let input = Array(input.unicodeScalars)
    
    var length = 1
    
    var freqMap = [String:Int]()
    
    while length < input.count {
        
        for i in 0 ..< (input.count - (length - 1)) {
            
            let subStrArray = input[i..<(i + length)].sorted()
            
            let str = subStrArray.reduce("", {$0 + String($1)})
            
            if let frequency = freqMap[str] {
                
                freqMap[str] = frequency + 1
            } else {
                
                freqMap[str] = 1
            }
        }
        
        length += 1
    }

    return freqMap
}

func numberOfAnagramPairs(input: String) -> Int {
    
    let subStrings = generateAllSubStrings(input: input)
    
    var pairs = 0
    
    for (_, frequency) in subStrings {
        
        if frequency >= 2 {
            
            pairs += ((frequency * frequency) - frequency) / 2
        }
    }
    
    return pairs
}

let n = Int(readLine()!)!

for _ in 0..<n {
    
    let input = readLine()!
    
    let pairs = numberOfAnagramPairs(input: input)
    
    print(pairs)
}
