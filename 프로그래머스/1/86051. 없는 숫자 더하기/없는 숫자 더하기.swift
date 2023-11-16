import Foundation

func solution(_ numbers:[Int]) -> Int {
    var a = [0,1,2,3,4,5,6,7,8,9]
    for i in numbers {
        a = a.filter { $0 != i }
    }
    return a.reduce(0, +)
}