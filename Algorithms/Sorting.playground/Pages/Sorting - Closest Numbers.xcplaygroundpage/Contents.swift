import Foundation

var inputs = ["10", "-20 -3916237 -357920 -3620601 7374819 -7330761 30 6246457 -6461594 266854"]

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

func findSmallestDifference(input: [Int]) -> String {
    
    var values = [String]()
    var i = 1
    
    var smallestValue = input[i+1] - input[i]
    
    values.append(String(input[i]))
    values.append(String(input[i+1]))
    
    i += 1
    
    while i < input.count - 1 {
        
        let difference = input[i+1] - input[i]
        
        if difference < smallestValue {
            
            values.removeAll()
        }
        
        if difference <= smallestValue {
            
            values.append( String(input[i]))
            values.append( String(input[i+1]))
            
            smallestValue = difference
        }
        
        i += 1
    }
    
    return values.joined(separator: " ")
}

let sizeOfInput = Int(readLine()!)!

let inputArr = readLine()!.characters.split(separator: " ").map{ Int(String($0))! }
let sorted = inputArr.sorted()

let list = findSmallestDifference(input: sorted)

print(list)

