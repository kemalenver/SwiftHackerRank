import Foundation

var inputs = ["2", "5", "1 1 1 2 2", "5", "2 1 3 1 2"]

// Expected
// 0
// 4

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

var inversions = 0

func mergeSort(_ nums: inout [Int], _ left: Int, _ right: Int) {
    
    if left < right {
        
        let mid = (left + right) / 2
        
        mergeSort(&nums, left, mid)
        mergeSort(&nums, mid + 1, right)
        
        merge(&nums, left, mid, right)
    }
}

func merge(_ nums: inout [Int], _ left: Int, _ mid: Int, _ right: Int) {
    
    let leftLength = mid - left + 1
    let rightLength = right - mid
    
//    var lAr = [Int](repeating: 0, count: leftLength)
//    var rAr = [Int](repeating: 0, count: rightLength)
    
    var lAr = [Int]()
    var rAr = [Int]()
    
    for i in 0 ..< leftLength {
        lAr.append(nums[left + i])
    }
    
    for i in 0 ..< rightLength {
        rAr.append(nums[mid + 1 + i])
    }
    
    var i = 0
    var j = 0
    var k = left
    
    while i < leftLength && j < rightLength {
        
        if lAr[i] <= rAr[j] {
            
            nums[k] = lAr[i]
            inversions += j
            i += 1
            
        } else {
            
            nums[k] = rAr[j]
            j += 1
        }
        
        k += 1
    }
    
    inversions += j * (leftLength - i)
    
    if i >= leftLength {
        
        while j < rightLength {
            
            nums[k] = rAr[j]
            j += 1
            k += 1
        }
    } else {
        
        while i < leftLength {
            
            nums[k] = lAr[i]
            
            i += 1
            k += 1
        }
    }
}

let numberOfTests = Int(readLine()!)!

for i in 0 ..< numberOfTests {

    inversions = 0
    
    let numberOfElements = Int(readLine()!)!
    
    var inputArr = readLine()!.characters.split(separator: " ").map{ Int(String($0))! }
    
    mergeSort(&inputArr, 0, numberOfElements - 1);
    
    print(inversions)
}

