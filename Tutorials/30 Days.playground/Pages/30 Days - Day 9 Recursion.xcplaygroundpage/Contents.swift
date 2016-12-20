
import Foundation

var inputs = ["3"]

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}


let n = Int(readLine()!)!

func factorial(n: Int) -> Int {
    
    if n == 1 {
        return 1
    }
    
    return n * factorial(n: n-1)
}

print( factorial(n: n) )
