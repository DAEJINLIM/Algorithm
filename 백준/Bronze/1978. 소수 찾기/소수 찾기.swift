import Foundation

let k = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int($0)! }
var num = 0

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

nums.forEach {
    if solution($0) {
        num += 1
    }
}

print(num)
