import Foundation

var inputs = ["10", "4 that", "3 be", "0 to", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"]

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

func calculateFrequencies(numbers: [Int]) -> [String] {
    
    var frequencyArray = [Int](repeating: 0, count: 100)
    var stringFrequencyArray = [String](repeating: "0", count: 100)
    
    var currentTotal = 0
    
    for i in 0...99 {
        
        for j in numbers {
            
            if i == j {

                currentTotal += 1
            }
        }
        
        frequencyArray[i] = currentTotal
        stringFrequencyArray[i] = String(currentTotal)
    }
    
    return stringFrequencyArray
}

let lines = Int(readLine()!)!

var numbers = [Int]()
for i in 0..<lines {
    
    let number  = Int(readLine()!.components(separatedBy: " ").first!)!
    numbers.append(number)
}

let frequencies = calculateFrequencies(numbers: numbers)

print( frequencies.joined(separator: " ") )


