import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var result = Set([Int]())
    for i in 0..<numbers.count {
        for j in i..<numbers.count {
            if j > i {
                result.insert(numbers[i] + numbers[j])
            }
        }
    }
    return Array(result).sorted()
}
