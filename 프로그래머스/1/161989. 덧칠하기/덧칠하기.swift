import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var arr = Array(repeating: true, count: n + 1)
    var count = 0
    
    for i in section {
        arr[i] = false
    }
    
    while arr.contains(false) {
        for i in section {
            if arr[i] == false {
                count += 1
                for k in 0..<m {
                    if i+k < n + 1 {
                        arr[i+k] = true
                    }
                }
            }
        }
    }
    return count
}
