
var inputs = ["4"]

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

var n = Int(readLine()!)!

func square(x: Int) -> Int {
    
    return x * x
}

print( square(x: n) )
