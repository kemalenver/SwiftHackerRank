import Foundation

var inputs = ["5", "4 5 3 7 2"]

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

let arraySize = Int(readLine()!)!

let array = readLine()!.characters.split(separator: " ").map{ Int(String($0))! }

var left = [Int]()
var equal = [Int]()
var right = [Int]()

func partition(values: [Int], left: inout [Int], equal: inout [Int], right: inout [Int]) {
    
    guard !values.isEmpty else { return }
    
    let pivot = values[0]
    
    for i in 0..<values.count {
        
        if values[i] < pivot {
            
            left.append(values[i])
        } else if values[i] == pivot {
            
            equal.append(values[i])
        } else {
            
            right.append(values[i])
        }
    }
}

func printArrays(left: [Int], equal: [Int], right: [Int]) {
    
    for number in left {
        print(number, separator: " ", terminator: " ")
    }
    
    for number in equal {
        print(number, separator: " ", terminator: " ")
    }
    
    for number in right {
        print(number, separator: " ", terminator: " ")
    }
}

partition(values: array, left: &left, equal: &equal, right: &right)

printArrays(left: left, equal: equal, right: right)
