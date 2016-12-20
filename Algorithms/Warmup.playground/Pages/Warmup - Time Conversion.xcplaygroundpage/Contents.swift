
import Foundation

var inputs = ["07:05:45PM"]

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

var dateString = readLine()!

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "h:mm:ssa"

if let date = dateFormatter.date(from: dateString) {
    
    dateFormatter.dateFormat = "HH:mm:ss"
    let date24Hour = dateFormatter.string(from: date)
    
    print(date24Hour)
}


