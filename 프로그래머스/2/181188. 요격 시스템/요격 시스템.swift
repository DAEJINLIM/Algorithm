import Foundation

func solution(_ targets:[[Int]]) -> Int {
    var count = 1
    var m = 0
    
    for target in targets.sorted { $0[1] < $1[1] } {
        if m == 0 {
            m = target[1]
        } else {
            if m <= target[0] {
                m = target[1]
                count += 1
            }
        }
    }
    
    return count
}