
func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var arr = [Int]()
    var result = [Int]()
    
    for (i, s) in score.enumerated() {
        if i <= k - 1 {
            arr.append(s)
        } else {
            arr = Array((arr + [s]).sorted(by: >).prefix(k))
        }
        
        result.append(arr.min()!)
    }
    
    return result
}