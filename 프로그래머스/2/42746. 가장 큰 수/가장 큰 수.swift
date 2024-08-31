import Foundation

func solution(_ numbers:[Int]) -> String {
    if numbers.reduce(0, +) == 0 { return "0" }
    return numbers.sorted { String($0)+String($1) > String($1)+String($0) }.map { String($0) }.joined()
}
