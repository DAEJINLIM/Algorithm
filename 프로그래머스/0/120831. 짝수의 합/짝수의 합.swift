import Foundation

func solution(_ n:Int) -> Int {
    var result = 0
    for i in stride(from: 2, through: n, by: 2) {
        result += i
    }
    return result
}