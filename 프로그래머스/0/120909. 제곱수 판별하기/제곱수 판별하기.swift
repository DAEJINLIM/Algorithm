import Foundation

func solution(_ n:Int) -> Int {
    var k = 1
    
    while true {
        if k * k == n {
            return 1
        } else if k * k > n {
            return 2
        }
        k += 1
    }
    
    return 2
}