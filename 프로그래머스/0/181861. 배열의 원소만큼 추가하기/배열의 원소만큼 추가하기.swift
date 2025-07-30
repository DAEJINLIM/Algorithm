import Foundation

func solution(_ arr:[Int]) -> [Int] {
    return arr.map { Array(repeating: $0, count: $0) }.flatMap { $0 }
}