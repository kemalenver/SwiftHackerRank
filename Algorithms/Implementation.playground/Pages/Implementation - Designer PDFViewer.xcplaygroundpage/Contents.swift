import Foundation

var inputs = ["1 3 1 3 1 4 1 3 2 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5", "abc"]

func readLine() -> String? {
    
    let next = inputs.first
    inputs.removeFirst()
    
    return next
}

func findArea(heights: [Int], word: String) -> Int {
    
    let word = word.utf8
    var maxHeight = 0
    
    for character in word {
    
        let index = Int(character - 97)
        
        if heights[index] > maxHeight {
            maxHeight = heights[index]
        }
    }
    
    return maxHeight * word.count
}

let heights = readLine()!.split(separator: " ").map { (character) -> Int in
    let stringChar = String(character)
    return Int(stringChar)!
}

let word = readLine()!

print(findArea(heights: heights, word: word))
