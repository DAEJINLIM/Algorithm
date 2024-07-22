import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var wants = [String]()
    var able = [Int]()
    
    for i in want.indices {
        for _ in 0..<number[i] {
            wants.append(want[i])
        }
    }
    wants.sort()
    
    for i in 0..<discount.count - number.reduce(0, +) + 1 {
        if wants == Array(discount[i..<wants.count+i]).sorted() {
            able.append(i+1)
        }
    }
    
    return able.count
}