import Foundation

func solution(_ names:[String]) -> [String] {
    return (0..<names.count).filter { $0 % 5 == 0 }.map { names[$0] }
}