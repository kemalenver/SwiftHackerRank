
var inputs = ["4", "1 4 3 2" ]

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

// number of elements
var n = Int(readLine()!)!

// read array
var arr = readLine()!.characters.split(separator: " ").map(String.init)

// iterate over the array in reverse order and print the elements separated by space

for i in stride(from: n - 1, through: 0, by: -1) {
    
    print(arr[i], terminator: " ")
}
