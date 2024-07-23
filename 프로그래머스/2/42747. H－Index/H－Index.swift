import Foundation

func solution(_ citations:[Int]) -> Int {
    
    if citations.reduce(0, +) == 0 {
        return 0
    }
    
    for (i,n) in citations.sorted(by: >).enumerated() {
        if n <= i {
            return i
        }
    }
    
    return citations.count
}