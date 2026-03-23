import Foundation

let m = Int(readLine()!)!
let k = Int(readLine()!)!
var sum = 0
var minimum = 10000

func solution(_ n: Int) -> Bool {
    if n < 2 { return false }
    if n == 2 { return true }
    if n % 2 == 0 { return false }
    
    let limit = Int(Double(n).squareRoot())
    
    for i in stride(from: 3, through: limit, by: 2) {
        if n % i == 0 {
            return false
        }
    }
    
    return true
}

for i in m...k {
    if solution(i) {
        sum += i
        minimum = min(minimum, i)
    }
}

print(sum == 0 ? -1 : "\(sum)\n\(minimum)")
