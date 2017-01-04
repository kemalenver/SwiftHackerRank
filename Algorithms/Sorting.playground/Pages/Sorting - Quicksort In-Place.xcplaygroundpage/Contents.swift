import Foundation

var inputs = ["7", "1 3 9 8 2 7 5"]

// Expected
//1 3 2 5 9 7 8
//1 2 3 5 9 7 8
//1 2 3 5 7 8 9

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

func swapArrayValues<T: Comparable>(_ array: inout [T], indexA: Int, indexB: Int) {
    
    let temp = array[indexA]
    
    array[indexA] = array[indexB]
    
    array[indexB] = temp
}


func partition<T: Comparable>(_ array: inout [T], p: Int, r: Int) -> Int {
    
    var q = p
    
    for j in q ..< r {
        
        if array[j] <= array[r] {
            
            if array[j] <= array[r] {
                
                swapArrayValues(&array, indexA: j, indexB: q)
                q += 1
            }
        }
    }
    
    swapArrayValues(&array, indexA: r, indexB: q)
    
    printArray(array)
    
    return q
}

func quickSort<T: Comparable>(_ array: inout [T], p: Int, r: Int) {
    
    if p < r {
        
        let q = partition(&array, p: p, r: r)
        
        quickSort(&array, p: p, r: q - 1)
        quickSort(&array, p: q + 1, r: r)
    }
}

func printArray<T>(_ array: [T]) {
    
    for element in array {
        print(element, separator: "", terminator: " ")
    }
    
    print()
}

let numberOfElements = readLine()

var inputArr = readLine()!.characters.split(separator: " ").map{ Int(String($0))! }

quickSort(&inputArr, p: 0, r: inputArr.count - 1)
