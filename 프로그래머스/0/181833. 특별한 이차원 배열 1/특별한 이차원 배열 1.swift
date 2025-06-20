import Foundation

func solution(_ n:Int) -> [[Int]] {
    var result = [[Int]]()
    for i in 0..<n {
        var arr = Array(repeating: 0, count: n)
        arr[i] = 1
        result.append(arr)
    }
    return result
}