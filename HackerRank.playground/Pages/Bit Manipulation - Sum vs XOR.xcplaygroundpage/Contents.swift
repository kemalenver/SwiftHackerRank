
import Foundation

let inputs = ["5"]

var n = Int(inputs[0])!

if n == 0 {
    
    print(1)
} else {
    
    let str = String(n, radix: 2)
    
    let numberOfZeros = str.components(separatedBy: "0").count - 1
    
    let combinations = Int(pow(Double(2), Double(numberOfZeros)))
    
    print(combinations)
}