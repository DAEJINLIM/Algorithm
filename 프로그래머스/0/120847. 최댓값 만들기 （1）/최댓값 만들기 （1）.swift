import Foundation

func solution(_ numbers:[Int]) -> Int {
    let count = numbers.count - 1
    return numbers.sorted()[count-1...count].reduce(1,*)
}