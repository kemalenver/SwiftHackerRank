
let input = "someStringThatIsCamel"

let numberOfWords = input.reduce(1) { (count, character) in
    
    return "A"..."Z" ~= String(character) ? count + 1 : count
}

print(numberOfWords)
