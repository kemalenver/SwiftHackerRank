
import Foundation

var numberTestCases = 1
var lineRead = "8 5"

for i in 0..<numberTestCases {
    
    var arr = lineRead.characters.split(separator: " ").map{ Int(String($0))! }
    
    var n = arr[0]
    var k = arr[1]
    
    if ((k - 1) | k) > n && k % 2 == 0 {
        
        print(k - 2)
    } else {
        
        print(k - 1)
    }
}

