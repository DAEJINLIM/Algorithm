import Foundation

var k = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map { String($0) }
var result: [String] = []

while !input.isEmpty {
    var picked: [String] = []
    var remain: [String] = []
    
    for (i, value) in input.enumerated() {
        if i % 2 == 0 {
            picked.append(value)
        } else {
            remain.append(value)
        }
    }
    
    result.insert(picked.joined(separator: " "), at: 0)
    input = remain
}

print(result.joined(separator: "\n"))
