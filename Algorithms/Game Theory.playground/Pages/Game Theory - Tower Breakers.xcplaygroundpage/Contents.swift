
import Foundation

var t = 2
var linesRead = ["2 2", "1 4"]

for i in 0..<t {
    
    var arr = linesRead[i].split(separator: " ").map{ Int(String($0))! }
    
    let n = arr[0]
    let m = arr[1]
    
    if m == 1 || n % 2 == 0 {
        print("2")
    } else {
        print("1")
    }
}
