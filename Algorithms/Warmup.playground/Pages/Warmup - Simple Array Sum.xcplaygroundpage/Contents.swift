
var input = ["6", "1 2 3 4 10 11"]

var n = Int(input[0])!
var arr = input[1].split(separator: " ").map { Int(String($0))! }

var sum = arr.reduce(0, +)

print(sum)
