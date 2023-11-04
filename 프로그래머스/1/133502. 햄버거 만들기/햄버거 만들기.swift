import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var cook: [Int] = []
    var count = 0
    
    for i in ingredient {
        cook.append(i)
        let cookLast = cook.suffix(4)
        if cookLast == [1, 2, 3, 1] {
            count += 1
            cook.removeLast(4)
        }
    }
    return count
}