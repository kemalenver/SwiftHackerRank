import Foundation

var inputs = ["4", "73", "67", "38", "33"]

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

func roundGrade(grade: Int) -> Int {
    
    var finalGrade = grade
    
    if grade >= 38 {
        
        let gradeMod = grade % 5
        
        if gradeMod > 2 {
            
            finalGrade += 5 - gradeMod
        }
    }
    
    return finalGrade
}

let inputCount = Int(readLine()!)!

for _ in 0 ..< inputCount {
    
    let grade = Int(readLine()!)!
    
    print( roundGrade(grade: grade) )
}
