import Darwin

var inputs = ["3","12","5","7"]

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

func isPrime(n: Int) -> Bool {
    
    if n == 1 {
        return false
    }
    
    if n % 2 == 0 && n != 2 {
        return false
    }
    
    let sq: Int = Int(ceil(sqrt(Double(n))))
    
    for i in stride(from: 3, to: sq + 1, by: 2) {
        
        if n % i == 0 {
            
            return false
        }
    }

    return true
}

var n = Int(readLine()!)!

for i in 0..<n {
    
    var testNumber = Int(readLine()!)!
    
    if isPrime(n: testNumber) {
        
        print("Prime")
    } else {
        
        print("Not prime")
    }
}
