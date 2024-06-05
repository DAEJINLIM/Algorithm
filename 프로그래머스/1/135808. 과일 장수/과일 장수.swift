import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var result = 0
    var arr = [Int]()
    
    for i in score.sorted(by: >) {
        arr.append(i)
        if arr.count == m {
            let min = arr.min()!
            result += min > k ? k : min * m
            arr = [Int]()
        }
    }
    return result
}