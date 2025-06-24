import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    return direction == "right" ? [numbers.last!] + Array(numbers[..<(numbers.count - 1)]) : Array(numbers[1...]) + [numbers.first!]
}