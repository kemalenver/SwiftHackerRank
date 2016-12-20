
var inputs = ["4"]

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

var n = Int(readLine()!)!

func f(x: Int) -> Int {
    
    return x % 11
}

print( f(x: n) )
