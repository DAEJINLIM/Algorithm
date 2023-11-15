import Foundation
func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var a = [Int]()
    for i in arr {
        if i.isMultiple(of: divisor) {
            a.append(i)
        }
    }
    return a.isEmpty ? [-1] : a.sorted()
}
