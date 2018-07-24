// number of elements
var n = 9

// read array and map the elements to integer
var readLine = "10 20 20 10 10 30 50 10 20"

var arr = readLine.split(separator: " ").map { Int(String($0))! }

var matches = [Int:Int]()

for x in arr {
    
    if var count = matches[x] {
        
        count += 1
        matches[x] = count
    } else {
        
        matches[x] = 1
    }
}

var pairs = 0

for (_, value) in matches {
    
    let currentPair = Int(value / 2)
    pairs += currentPair
}

print(pairs)
