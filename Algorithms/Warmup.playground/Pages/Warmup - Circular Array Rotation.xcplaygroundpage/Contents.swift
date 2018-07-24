
var inputs = ["3 2 3", "1 2 3", "0" ,"1" ,"2"]

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

var params = readLine()!.split(separator: " ").map { Int(String($0))! }

let n = params[0]
let k = params[1]
let q = params[2]
let rotation = k % n

let elements:[Int] = readLine()!.split(separator: " ").map{ Int(String($0))! }

func nextM() -> Int {
    
    return Int(readLine()!)!
}

for _ in 0..<q {
    
    let index = nextM()
    
    if(index - rotation >= 0) {
        print(elements[index-rotation])
    } else {
        print(elements[index-rotation+elements.count])
    }
}
