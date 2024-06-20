import Foundation

func solution(_ n:Int) -> Int {
    var arr = Array(repeating: true, count: n + 1)
    (arr[0], arr[1]) = (false, false)
    
    
    for i in 2...n {
        if arr[i] {
            for k in stride(from: i * i, to: n + 1, by: i) {
                arr[k] = false
            }
        }
    }
    return arr.filter { $0 }.count
}