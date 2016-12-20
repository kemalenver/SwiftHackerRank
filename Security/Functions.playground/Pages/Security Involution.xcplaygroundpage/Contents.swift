
var inputs = ["2", "2 1"]

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

var n = Int(readLine()!)!

var arr = readLine()!.characters.split(separator: " ").map{ Int(String($0))! }

var ok = true

for i in 0..<n {
    
    if arr[arr[i] - 1] != i + 1 {
        ok = false
        break
    }
}

if ok {
    print("YES")
} else {
    print("NO")
}
