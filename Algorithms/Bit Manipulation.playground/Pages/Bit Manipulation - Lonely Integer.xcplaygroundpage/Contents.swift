
let inputs = ["3", "1 1 2"]

var n = Int(inputs[0])!

var elements = inputs[1].characters.split(separator: " ").map{ Int(String($0))! }

let x = elements.reduce(0, ^)

print(x)