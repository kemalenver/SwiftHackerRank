import Foundation

var inputs = ["10", "4 that", "3 be", "0 to", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"]

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

func calculateFrequencies(numbers: [Int], orig: [String]) -> [Int] {
    
    var frequencyArray = [Int](repeating: 0, count: 100)
    
    var str = ""
    
    var currentTotal = 0
    
    let half = numbers.count / 2
    
    for i in 0...99 {
        
        for (index, j) in numbers.enumerated() {
            
            if index < half {
                str += "- "
            }
            if i == j && index >= half {
                
                currentTotal += 1
                str += orig[index] + " "
                
            }
        }
        
        frequencyArray[i] = currentTotal
    }
    
    
    print(str)
    return frequencyArray
}

let lines = Int(readLine()!)!

var numbers = [Int]()
var original = [String]()

for i in 0..<lines {
    
    let split = readLine()!.components(separatedBy: " ")
    
    let number  = Int(split.first!)!
    numbers.append(number)
    
    let string = split.last!
    original.append(string)
}

let frequencies = calculateFrequencies(numbers: numbers, orig: original)



