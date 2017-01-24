/*
 
 def mergesort(ar):
 inversions = 0
 if len(ar) > 1:
 mid = len(ar)/2
 left = ar[:mid]
 right = ar[mid:]
 
 leftInv = mergesort(left)
 rightInv =  mergesort(right)
 inversions += leftInv
 inversions += rightInv
 
 i = 0
 j = 0
 k = 0
 
 while i < len(left) and j < len(right):
 if left[i] <= right[j]:
 ar[k] = left[i]
 i += 1
 else:
 ar[k] = right[j]
 j += 1
 print(str(inversions) + "+=" + str(mid-i) )
 inversions += mid-i
 k+=1
 
 while i < len(left):
 ar[k] = left[i]
 i += 1
 k += 1
 
 while j<len(right):
 ar[k] = right[j]
 j += 1
 k += 1
 return inversions
 
 raw_input = "9 1 6 3 3 8 1 2 9 1 6 3 3 8 1 2 9 1 6 3 3 8 1 2 9 1 6 3 3 8 1 2 2"
 a = [ int( i ) for i in raw_input.strip().split() ]
 
 answer = mergesort(a)
 #print answer
 
 # n = input()
 # for iterate in range( n ):
 #     x = input()
 #     a = [ int( i ) for i in raw_input().strip().split() ]
 #     answer = mergesort(a)
 
 #     print answer
 
 */
import Foundation

var inputs = ["1", "33", "9 1 6 3 3 8 1 2 9 1 6 3 3 8 1 2 9 1 6 3 3 8 1 2 9 1 6 3 3 8 1 2 2"]
// 0 4 244

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

func mergeSort(_ array: [Int]) -> Int {
    
    var ar = array
    
    var inversions = 0
    
    if ar.count > 1 {
        
        let mid = ar.count / 2

        let left = Array(array[0 ..< mid])
        let right = Array(array[mid ..< array.count])

        let leftInv = mergeSort(left)
        let rightInv = mergeSort(right)
        
        inversions += leftInv
        inversions += rightInv
        
        var i = 0
        var j = 0
        var k = 0
        
        while i < left.count && j < right.count {
            
            if left[i] <= right[j] {
                
                ar[k] = left[i]
                i += 1
            } else {
                
                ar[k] = right[j]
                j += 1

                print("\(inversions) += \(mid-i)")
                inversions += mid-i
 
            }
            
            k += 1
        }
        
        while i < left.count {
            
            ar[k] = left[i]
            i += 1
            k += 1
        }
        
        while j < right.count {
            
            ar[k] = right[j]
            j += 1
            k += 1
        }
    }
    
    return inversions
}


let numberOfTests = Int(readLine()!)!

for i in 0 ..< numberOfTests {
    
    let numberOfElements = Int(readLine()!)!
    
    var inputArr = readLine()!.characters.split(separator: " ").map{ Int(String($0))! }
    
    let answer = mergeSort(inputArr)
    
    print(answer)
}
