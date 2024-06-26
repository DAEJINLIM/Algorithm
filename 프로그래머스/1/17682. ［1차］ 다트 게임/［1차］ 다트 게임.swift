import Foundation

func solution(_ dartResult:String) -> Int {
    let dartResult = dartResult.replacingOccurrences(of: "10", with: "k").map { $0 == "k" ? "10" : String($0) }
    var i = -1
    var starHistory = [Int]()
    var count = 0
    var arr = [Int]()
    
    for n in dartResult {
        if let int = Int(n) {
            count = int
        } else {
            if n == "S" || n == "D" || n == "T" {
                arr.append(n == "S" ? count : n == "D" ? count*count : count*count*count)
                i += 1
            }
            if n == "*" {
                if arr.count == 1 {
                    arr[0] = arr[0] * 2
                }
                if arr.count > 1 {
                    arr[i-1] = arr[i-1] * 2
                    arr[i] = arr[i] * 2
                }
                starHistory.append(starHistory.count)
            }
            if n == "#" {
                arr[i] = arr[i] * -1
            }
        }
    }
    return arr.reduce(0, +)
}