import Foundation
var input = readLine()!.components(separatedBy: " ")
var m = Int(input[0])!
var n = Int(input[1])!
var sum = m * n
var turns = 0
m -= 1
while true {
    sum -= n
    if sum != 0 {
        turns += 1
        n -= 1
    } else {
        break
    }
        sum -= m
        if sum != 0 {
            turns += 1
            m -= 1
        } else {
            break
        }
}
print(turns)