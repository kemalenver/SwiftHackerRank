
import Foundation

func setFromString(_ line: String) -> Set<String> {
    
    return Set( line.characters.map { String($0) } )
}

let n = 3
let linesRead = ["abcdde", "baccd", "eeabg"]

var lastSet = setFromString(linesRead[0])

for i in 1..<n {
    
    let stringSet = setFromString(linesRead[i])
    
    lastSet = lastSet.intersection(stringSet)
}

print(lastSet.count)
