import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var result = n - lost.count
    var lost = lost.sorted()
    var reserve = reserve
    for i in lost {
        if reserve.contains(i) {
            lost.removeAll { $0 == i }
            reserve.removeAll { $0 == i }
            result += 1
        }
    }
    
    for i in lost {
        if reserve.contains(i - 1) {
            result += 1
            reserve.removeAll { $0 == i - 1 }
        } else if reserve.contains(i + 1) {
            result += 1
            reserve.removeAll { $0 == i + 1 }
        }
    }
    return result
}