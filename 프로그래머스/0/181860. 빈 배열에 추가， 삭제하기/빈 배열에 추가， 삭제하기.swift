import Foundation

func solution(_ arr:[Int], _ flag:[Bool]) -> [Int] {
    var x = [Int]()
    for (i, flag) in flag.enumerated() {
        if flag {
            for _ in 0..<(arr[i] * 2) {
                x.append(arr[i])
            }
        } else {
            for _ in 0..<arr[i] {
                x.removeLast()
            }
        }
    }
    return x
}