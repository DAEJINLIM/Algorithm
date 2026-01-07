import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var result = arr
    for i in queries {
        result.swapAt(i[0], i[1])
    }
    return result
}