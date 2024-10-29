import Foundation

func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
    let total = queue1 + queue2
    var sum1 = queue1.reduce(0, +)
    var sum2 = queue2.reduce(0, +)
    let totalSum = sum1 + sum2
    var s = 0
    var e = queue1.count
    var count = 0
    
    if total.reduce(0, +) % 2 == 1 {
        return -1
    }
    
    while s < e {
        if sum1 > sum2 {
            if s+1 == e {
                return -1
            } else {
                s += 1
                count += 1
                sum1 -= total[s-1]
            }
        }
        if sum1 < sum2 {
            e += 1
            count += 1
            sum1 += total[e-1]
            if e+1 > total.count {
                return -1
            }
        }
        sum2 = totalSum - sum1
        if sum1 == sum2 {
            break
        }
    }
    
    return count
}