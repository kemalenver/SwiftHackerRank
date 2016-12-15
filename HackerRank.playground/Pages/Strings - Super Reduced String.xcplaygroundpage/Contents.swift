
import Foundation

var input = "aaabccddd"

var array = input.characters.map( { return String($0) } )

func removeDuplicate(_ original: [String]) -> [String] {
    
    if original.isEmpty {
        
        return original
    }
    
    var tempArray = original
    
    for i in 0 ..< tempArray.count-1 {
        
        if tempArray[i] == tempArray[i+1] {
            
            tempArray.remove(at: i)
            tempArray.remove(at: i)
            return removeDuplicate(tempArray)
        }
    }
    
    return original
}

let answer = removeDuplicate(array).joined(separator: "")

if answer.isEmpty {
    print("Empty String")
} else {
    print(answer)
}