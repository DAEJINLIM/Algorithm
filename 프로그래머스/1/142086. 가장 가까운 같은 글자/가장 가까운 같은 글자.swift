import Foundation

func solution(_ s:String) -> [Int] {
    let arr = s.map { String($0) }
    var result = [Int]()
    for (i, n) in arr.enumerated() {
        if arr[0..<i].contains(n) {
            let lastIndex = arr[0..<i].lastIndex(of: n)!
            result.append(i - lastIndex)
        } else {
            result.append(-1)
        }
    }
    return result
}