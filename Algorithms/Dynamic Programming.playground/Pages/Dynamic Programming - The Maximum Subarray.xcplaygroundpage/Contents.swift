
// Simulate readLine
var inputs = ["2", "4", "1 2 3 4", "6", "2 -1 2 3 4 -5"]

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

var numberTestCases = Int(readLine()!)!

func nonContiguousTotal(_ array:[Int]) -> Int {
    
    let filteredArray = array.filter { (value) -> Bool in
        return value > 0
    }
    
    return filteredArray.isEmpty ? array.max()! : filteredArray.reduce(0, +)
}

func contiguousTotal(_ array:[Int]) -> Int {
    
    var maxEndingHere = array[0]
    var maxSoFar = array[0]
    
    for i in 1..<array.count {
        
        let element = array[i]
        
        maxEndingHere = max(element, maxEndingHere + element)
        maxSoFar = max(maxSoFar, maxEndingHere)
    }
    
    return maxSoFar
}

for _ in 0..<numberTestCases {
    
    var _ = Int(readLine()!)!
    let elements = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    let total1 = contiguousTotal(elements)
    let total2 = nonContiguousTotal(elements)
    
    print("\(total1) \(total2)")
}
