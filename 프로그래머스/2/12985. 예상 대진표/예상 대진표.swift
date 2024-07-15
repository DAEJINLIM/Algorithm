import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var numA = a % 2 == 0 ? a : a + 1
    var numB = b % 2 == 0 ? b : b + 1
    var count = 0
    
    while numA != numB {
        numA = Int(ceil(Double(numA) / 2.0))
        numB = Int(ceil(Double(numB) / 2.0))
        count += 1
    }
    
    return count == 0 ? 1 : count
}