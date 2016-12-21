
import Foundation

var inputs = ["2", "hello", "world", "hi", "world"] // YES

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

func checkPair(string1: String.UTF8View, string2: String.UTF8View) -> Bool {
    
    let alphabet = "abcdefghijklmnopqrstuvwxyz".utf8

    for letter in alphabet {
        
        if (string1.contains(letter) && string2.contains(letter)) {
            return true
        }
    }
    
    return false
}

let numberpairs = Int(readLine()!)!

for i in 0..<numberpairs {
    
    let string1 = readLine()!.utf8
    let string2 = readLine()!.utf8
    
    if checkPair(string1: string1, string2: string2) {
        print("YES")
    } else {
        print("NO")
    }
}
