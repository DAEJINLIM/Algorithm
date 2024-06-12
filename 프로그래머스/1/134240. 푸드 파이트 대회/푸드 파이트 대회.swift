import Foundation

func solution(_ food:[Int]) -> String {
    let arr = food.dropFirst().map { $0 % 2 == 0 ? $0 / 2 : ($0 - 1) / 2 }
    var result = ""
    
    for (i, n) in arr.enumerated() {
        for _ in 0..<n {
            result += String(i + 1)
        }
    }
    
    return result + "0" + result.reversed()
}