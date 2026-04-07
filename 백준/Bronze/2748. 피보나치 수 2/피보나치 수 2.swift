import Foundation

let input = Int(readLine()!)!
var a = 0
var b = 1

for _ in 0..<input {
    let c = b
    b = a + b
    a = c
}

print(a)
