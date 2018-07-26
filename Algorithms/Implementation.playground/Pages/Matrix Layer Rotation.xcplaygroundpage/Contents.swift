//: [Previous](@previous)

import Foundation

/*
 4 4 1
 1  2  3  4
 5  6  7  8
 9  10 11 12
 13 14 15 16
 */
var inputs = ["4 4 1", "1 2 3 4", "5 6 7 8", "9 10 11 12", "13 14 15 16"]

func readLine() -> String? {

    let next = inputs.first
    inputs.removeFirst()

    return next
}


// Complete the matrixRotation function below.
func matrixRotation(matrix: [[Int]], m: Int, n: Int, r: Int) -> Void {

    var matrix = matrix

    var k = m

    if n < m {
        k = n
    }

    // Create an array big enough to hold the 'layer'
    let arraySize = ( m * 2 + (n - 2) * 2)
    var flat = [Int](repeating: 0, count: arraySize)

    // Go through each later
    for i in 0..<k {

        if (i + 1) * 2 > k {
            break
        }

        var pos = 0

        // Traverse along later, top, right, bottom, left
        for j in i..<n-i {
            flat[pos] = matrix[i][j]
            pos += 1
        }

        for j in i+1..<m-i {
            flat[pos] = matrix[j][n-1-i]
            pos += 1
        }

        for j in stride(from: n-2-i, to: i-1, by: -1) {
            flat[pos] = matrix[m-1-i][j]
            pos += 1
        }

        for j in stride(from: m-2-i, to: i, by: -1) {
            flat[pos] = matrix[j][i]
            pos += 1
        }

        var startPos = r % pos

        // Copy layer back in to matrix, top, right, bottom, left.  Starting with offset from flat layer
        if startPos > 0 {

            for j in i..<n-i {
                matrix[i][j] = flat[startPos]
                startPos = (startPos+1) % pos
            }

            for j in i+1..<m-i {
                matrix[j][n-1-i] = flat[startPos]
                startPos = (startPos+1) % pos
            }

            for j in stride(from: n-2-i, to: i-1, by: -1) {
                matrix[m-1-i][j] = flat[startPos]
                startPos = (startPos+1) % pos
            }

            for j in stride(from: m-2-i, to: i, by: -1) {
                matrix[j][i] = flat[startPos]
                startPos = (startPos+1) % pos
            }
        }
    }

    for row in matrix {

        let str = row.map { String($0) }.joined(separator: " ")
        print(str)
    }
}

guard let mnrTemp = readLine() else { fatalError("Bad input") }
let mnr = mnrTemp.split(separator: " ").map{ String($0) }

guard let m = Int(mnr[0].trimmingCharacters(in: .whitespacesAndNewlines))
    else { fatalError("Bad input") }

guard let n = Int(mnr[1].trimmingCharacters(in: .whitespacesAndNewlines))
    else { fatalError("Bad input") }

guard let r = Int(mnr[2].trimmingCharacters(in: .whitespacesAndNewlines))
    else { fatalError("Bad input") }

let matrix: [[Int]] = AnyIterator{ readLine() }.prefix(m).map {
    let matrixRow: [Int] = $0.split(separator: " ").map {
        if let matrixItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
            return matrixItem
        } else { fatalError("Bad input") }
    }

    guard matrixRow.count == n else { fatalError("Bad input") }

    return matrixRow
}

guard matrix.count == m else { fatalError("Bad input") }

matrixRotation(matrix: matrix, m: m, n: n, r: r)

/*
 2 3 4 8
 1 7 11 12
 5 6 10 16
 9 13 14 15

 */

