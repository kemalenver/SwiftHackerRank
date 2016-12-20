
var inputs = ["3", "2 3 1"]

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

var n = Int(readLine()!)!

var arr = readLine()!.characters.split(separator: " ").map{Int(String($0))!}

for i in 1...n+1 {
    
    for j in 0..<n {
        
        if  arr[j] == i {
            print(j+1)
        }
    }    
}