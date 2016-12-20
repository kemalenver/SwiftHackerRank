
var inputs = ["3", "1 2 3"]

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

var n = Int(readLine()!)!

var arr = readLine()!.characters.split(separator: " ").map{Int(String($0))!}

var uniques = Set(arr)

if(n == uniques.count) {
    print("YES")
} else {
    print("NO")
}
