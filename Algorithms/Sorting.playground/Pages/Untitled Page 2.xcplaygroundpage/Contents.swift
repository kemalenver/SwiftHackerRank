
import Foundation

var inputs = ["3", "5", "1 1 1 2 2", "5", "2 1 3 1 2", "33", "9 1 6 3 3 8 1 2 9 1 6 3 3 8 1 2 9 1 6 3 3 8 1 2 9 1 6 3 3 8 1 2 2"]

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

var inversions = 0

func insertionSort<T: Comparable>(_ array: [T]) -> [T] {
    
    var array = array
    
    for i in 1 ..< array.count {
        
        let value = array[i]
        
        var position = i - 1
        
        while position >= 0 && array[position] > value {
            
            array[position+1] = array[position]
            position-=1
            
            inversions += 1
        }
        
        array[position+1] = value
    }
    
    return array
}

func mergeSort<T: Comparable>(_ unsorted: [T]) -> [T] {
    
    var unsorted = unsorted
    if unsorted.count < 2 {
        
        return unsorted
    }
    
    let pivot: Int = unsorted.count / 2
    
    let leftArray: [T] = Array(unsorted[0 ..< pivot])
    let rightArray: [T] = Array(unsorted[pivot ..< unsorted.count])
    
    var leftSorted = [T]()
    var rightSorted = [T]()
    
    if leftArray.count < 10 {
        
        leftSorted = insertionSort(leftArray)
    } else {
        leftSorted = mergeSort(leftArray)
    }
    
    if rightArray.count < 10 {
        
        rightSorted = insertionSort(rightArray)
    } else {
        rightSorted = mergeSort(rightArray)
    }
    
    return merge(leftSorted, rightSorted)
}

func merge<T: Comparable>(_ left: [T], _ right: [T]) -> [T] {
    
    var leftIndex = 0
    var rightIndex = 0
    var orderedArray = [T]()
    
    let leftCount = left.count
    let rightCount = right.count
    
    while leftIndex < leftCount && rightIndex < rightCount {
        
        if left[leftIndex] <= right[rightIndex] {

            orderedArray += [left[leftIndex]]
            leftIndex += 1
        }
        else {
            
            orderedArray += [right[rightIndex]]
            rightIndex += 1
            
            inversions += (leftCount - leftIndex)
        }
        
    }
    
    // Copy any remaining
    orderedArray += Array( left[leftIndex ..< leftCount] )
    orderedArray += Array( right[rightIndex ..< rightCount] )
    
    return orderedArray
}

let numberOfTests = Int(readLine()!)!

for i in 0 ..< numberOfTests {
    
    inversions = 0
    
    let numberOfElements = Int(readLine()!)!
    
    var inputArr = readLine()!.characters.split(separator: " ").map{ Int(String($0))! }
    
    if inputArr.count % 2 != 0 {
        
        inputArr.insert(1, at: 0)
    }

    mergeSort(inputArr)
    print(inversions)
}

