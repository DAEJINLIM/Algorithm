func solution(_ s: String) -> Bool {
    var count = 0
    
    for i in s {
        if i == "(" {
            count += 1
        } else if i == ")" {
            count -= 1
        }
        
        if count < 0 {
            return false
        }
    }
    
    return count == 0
}
