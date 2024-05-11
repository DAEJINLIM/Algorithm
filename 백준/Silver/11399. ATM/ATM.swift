import Foundation

let input = Int(readLine()!)!

var people = readLine()!.split(separator: " ").map { Int($0) }
people.sort(by: {$0! < $1!})

var result = 0

for i in 0..<input {
    for k in 0...i {
        result += people[k]!
    }
}

print(result)