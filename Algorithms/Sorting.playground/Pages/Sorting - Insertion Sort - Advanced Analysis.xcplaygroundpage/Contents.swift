
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

func mergeSort(_ nums: inout [Int], _ i: Int, _ j: Int) {
    
    if i < j {
        
        let mid = (i+j)/2
        
        mergeSort(&nums, i, mid)
        mergeSort(&nums, mid+1, j)
        
        merge(&nums, i, j, mid)
    }
}

func merge(_ a: inout [Int], _ i: Int, _ j: Int, _ mid: Int) {
    
    var i = i
    var j = j
    
    let ni = mid + 1
    let nj = j + 1
    var s = i
    
    var arr = [Int](repeating: 0, count: j - i + 1)
    j = ni
    
    var k = 0
    
    while i < ni && j < nj {
        
        if a[i] <= a[j] {
            
            arr[k] = a[i]
            i += 1
        } else {
            
            arr[k] = a[j]
            inversions += (ni - i)
            j += 1
        }
        k += 1
    }
    
    while i < ni {
        
        arr[k] = a[i]
        i += 1
        k += 1
    }
    
    while j < nj {
        
        arr[k] = a[j]
        j += 1
        k += 1
    }
    
    k = 0
    
    while s < nj {
        
        a[s] = arr[k]
        s += 1
        k += 1
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
