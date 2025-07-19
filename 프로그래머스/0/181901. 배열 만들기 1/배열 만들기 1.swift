import Foundation

func solution(_ n:Int, _ k:Int) -> [Int] {
    return (1...n/k).map { $0 * k }
}