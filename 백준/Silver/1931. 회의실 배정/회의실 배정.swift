import Foundation

let input = Int(readLine()!)!
var arr = [[Int]]()

for _ in 0..<input {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    arr.append(input)
}

arr.sort { $0[1] == $1[1] ? $0[0] < $1[0] : $0[1] < $1[1] }

var lastEnd = 0
var count = 0

for i in arr {
    if lastEnd <= i[0] {
        lastEnd = i[1]
        count += 1
    }
}

print(count)