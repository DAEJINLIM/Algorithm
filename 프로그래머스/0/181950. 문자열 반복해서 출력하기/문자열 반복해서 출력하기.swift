import Foundation

let input = readLine()!.split(separator: " ")
print(Array(repeating: input[0], count: Int(input[1])!).joined())
