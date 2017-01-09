
import Foundation

var inputs = ["2", "5", "1 1 1 2 2", "5", "2 1 3 1 2"]

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

var inversions = 0

func merge<T: Comparable>(_ a: [T], _ b: [T], _ acc: [T]) -> [T] {
    
    if a.isEmpty {
        
        return acc + b
    } else if b.isEmpty {
        
        return acc + a
    }
    
    let aFirst = a.first!
    let bFirst = b.first!
    
    if aFirst <= bFirst {
        
        let allA = Array(a[1..<a.count])
        
        return merge(allA, b, acc + [aFirst])
    } else {
        
        inversions += a.count
        
        let allB = Array(b[1..<b.count])
        
        return  merge(a, allB, acc + [bFirst])
    }
}

func mergeSort<T: Comparable>(_ a: [T]) -> [T] {
    
    if a.count < 2 {
        
        return a
    } else {
        
        let mid = a.count / 2
        
        let firstHalf = Array(a[0 ..< mid])
        let secondHalf = Array(a[mid ..< a.count])
        
        return merge(mergeSort(firstHalf), mergeSort(secondHalf), [])
    }
}

let numberOfTests = Int(readLine()!)!

for i in 0 ..< numberOfTests {
    
    inversions = 0
    
    let numberOfElements = Int(readLine()!)!
    
    var inputArr = readLine()!.characters.split(separator: " ").map{ Int(String($0))! }
    
    mergeSort(inputArr)
    
    print(inversions)
}
