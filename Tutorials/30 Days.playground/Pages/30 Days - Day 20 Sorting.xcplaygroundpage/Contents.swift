
import Foundation

var inputs = [ "3", "1 2 3"]

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

var n = Int(readLine()!)!

var arr = readLine()!.characters.split(separator: " ").map{ Int(String($0))! }

var totalSwaps = 0

for i in 0 ..< n {
    
    // Track number of elements swapped during a single array traversal
    var numberOfSwaps = 0
    
    for j in 0 ..< n-1 {
        
        // Swap adjacent elements if they are in decreasing order
        if arr[j] > arr[j+1] {
            swap(&arr[j], &arr[j+1])
            numberOfSwaps += 1
        }
    }
    
    totalSwaps += numberOfSwaps
    
    // If no elements were swapped during a traversal, array is sorted
    if numberOfSwaps == 0 {
        break;
    }
}

print("Array is sorted in \(totalSwaps) swaps.")
print("First Element: \(arr.first!)")
print("Last Element: \(arr.last!)")