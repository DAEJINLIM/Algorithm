import Foundation

func solution(_ number:[Int]) -> Int {
    let count = number.count
    if count == 3 {
        return number.reduce(0, +) == 0 ? 1 : 0
    }
    var result = 0
    
    for a in number.indices {
        if a < count - 2 {
            for b in (a + 1)..<count {
                for c in (b + 1)..<count {
                    if number[a] + number[b] + number[c] == 0 {
                        result += 1
                    }
                }
            }
        }
    }
    
    return result
}