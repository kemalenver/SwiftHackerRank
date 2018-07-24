
let inputs = ["1", "2", "3", "4", "5", "6", "7", "10"]

var testCases = Int("8")!

for i in 0..<testCases {
    
    let numberStones = Int(inputs[i])!
    
    if 0...1 ~= numberStones % 7 {
        print("Second")
    } else {
        print("First")
    }
}
