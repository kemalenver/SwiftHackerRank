
let inputs = ["5", "2 4 6 8 3"]

var n = Int(inputs[0])!

var array = inputs[1].split(separator: " ").map{ Int(String($0))! }

for i in 1..<n {
    
    let value = array[i]
    
    var position = i-1
    
    while position >= 0 && array[position] > value {
        
        array[position+1] = array[position]
        position-=1
        
        print(array.map { "\($0)" }.joined(separator: " "))
    }
    
    array[position+1] = value
}

print(array.map { "\($0)" }.joined(separator: " "))
