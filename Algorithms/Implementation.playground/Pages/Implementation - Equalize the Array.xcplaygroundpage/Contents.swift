
import Foundation

var inputs = ["5", "3 3 2 1 3"]

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

func minimise(input: [Int]) -> Int {
    
    var frequencyList = [Int](repeating: 0, count: 101)
    var max = 0
    
    for digit in input {
        
        frequencyList[digit] += 1
        
        if frequencyList[digit] > max {
            max = frequencyList[digit]
        }
    }
    
    return input.count - max
}

let arraySize = Int(readLine()!)!

var inputArr = readLine()!.split(separator: " ").map{ Int(String($0))! }

let answer = minimise(input: inputArr)

print(answer)
