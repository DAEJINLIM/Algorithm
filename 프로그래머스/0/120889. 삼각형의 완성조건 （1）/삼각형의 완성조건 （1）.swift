import Foundation

func solution(_ sides:[Int]) -> Int {
    let a = sides.sorted(by: >)
    return a[0] < a[1] + a[2] ? 1 : 2
}