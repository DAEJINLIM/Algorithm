import Foundation

func solution(_ s:String) -> Int {
    var result = 0
    var first: Character?
    var count = 0
    
    for i in s {
        if first == nil {
            first = i
            result += 1
        }
        
        count += first == i ? 1 : -1
        
        if count == 0 {
            first = nil
        }
    }
    
    
    return result
}