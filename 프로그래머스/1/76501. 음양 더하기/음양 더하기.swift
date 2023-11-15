import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var k = 0
    for (i, n) in absolutes.enumerated() {
        if signs[i] { k += n } 
        else { k -= n }
    }
    return k
}
