import Foundation

var inputs = ["5", "4 5 3 7 2"]

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

let arraySize = Int(readLine()!)!

let array = readLine()!.split(separator: " ").map { Int(String($0))! }

var left = [Int]()
var equal = [Int]()
var right = [Int]()

func partition<T: Comparable>(values: [T], left: inout [T], equal: inout [T], right: inout [T]) {
    
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
