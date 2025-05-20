import Foundation

func solution(_ n:Int) -> [Int] {
    var result = Set<Int>()
    
    for i in 1...n {
        if (n / i) * i == n {
            result.insert(i)
        }
    }
    
    return Array(result).sorted()
}