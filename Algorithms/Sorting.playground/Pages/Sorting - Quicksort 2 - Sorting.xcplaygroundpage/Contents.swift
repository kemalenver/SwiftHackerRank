import Foundation

var inputs = ["7", "5 8 1 3 7 9 2"]

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}


func quickSort<T: Comparable>(array: inout [T]) {

    guard array.count > 1 else { return }
    
    var leftArr = [T]()
    var rightArr = [T]()
    
    let pivot = array[0]
    
    for i in 1 ..< array.count {
        
        if array[i] <= pivot {
            leftArr.append(array[i])
        } else {
            rightArr.append(array[i])
        }
    }
    
    quickSort(array: &leftArr)
    quickSort(array: &rightArr)
    
    var index = 0
    
    index = copyBack(array: &array, subArray: leftArr, startPosition: index)
    
    index = copyBack(array: &array, subArray: [pivot], startPosition: index)
    
    index = copyBack(array: &array, subArray: rightArr, startPosition: index)

    print()
}

func copyBack<T: Comparable>(array: inout [T], subArray: [T], startPosition: Int) -> Int {
    
    var startPosition = startPosition
    
    for i in 0..<subArray.count {
        
        array[startPosition] = subArray[i]
        startPosition += 1
        
        print(subArray[i], separator: " ", terminator: " ")
    }
    
    return startPosition
}


let arraySize = Int(readLine()!)!

var inputArr = readLine()!.split(separator: " ").map{ Int(String($0))! }

quickSort(array: &inputArr)
