import Foundation

func solution(_ numbers:[Int]) -> Int {
    let a = numbers.sorted().prefix(2).reduce(1, *)
    let b = numbers.sorted().suffix(2).reduce(1, *)
    return max(a,b)
}