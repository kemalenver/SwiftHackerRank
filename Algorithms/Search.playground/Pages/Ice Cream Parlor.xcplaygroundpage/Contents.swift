import Foundation

var inputs = ["2", "4", "5", "1 4 5 3 2", "4", "4", "2 2 4 3"]

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}


let t = Int(readLine()!)!

for i in 0..<t {
    
    let m = Int(readLine()!)!
    let n = Int(readLine()!)!
    let inputArr = readLine()!.characters.split(separator: " ").map{ Int(String($0))! }
    
}



