
var inputs = ["3", "2 3 1"]

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

var n = Int(readLine()!)!

var arr = readLine()!.characters.split(separator: " ").map{Int(String($0))!}

for i in 0..<n {
    
    var index = arr[i]-1
    print(arr[index])
}
