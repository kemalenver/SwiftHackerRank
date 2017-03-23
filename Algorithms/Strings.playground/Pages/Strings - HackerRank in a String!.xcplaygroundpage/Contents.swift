
import Foundation

var inputs = ["10",
              "knarrekcah", // NO
              "hackerrank", // YES
              "hackerone", // NO
              "abcdefghijklmnopqrstuvwxyz", // NO
              "rhackerank", // NO
              "ahankerck", // NO
              "hacakaeararanaka", // YES
              "hhhhaaaaackkkkerrrrrrrrank", // YES
              "crackerhackerknar", // NO
              "hhhackkerbanker"] // NO

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

let hackerRank = Array("hackerrank".utf8)

func checkStringIsHackerRank(input:  String.UTF8View) -> Bool {
    
    let input = Array(input)

    var i = 0
    var j = 0
    
    var result = false
    
    while i < input.count {
        
        if input[i]==hackerRank[j] {
            j += 1
        }
        
        if j > hackerRank.count-1 {
            result = true
            break
        }
        
        i += 1
  
    }
    
    return result
}

let numberOfTests = Int(readLine()!)!

for i in 0..<numberOfTests {
    
    let string1 = readLine()!.utf8
    
    if checkStringIsHackerRank(input: string1) {
        print("YES")
    } else {
        print("NO")
    }
}

