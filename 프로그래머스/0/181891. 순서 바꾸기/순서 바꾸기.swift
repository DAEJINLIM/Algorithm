import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    var result = num_list
    
    for i in 0..<num_list.count {
        if i == n {
            break
        } else {
            result.append(result.removeFirst())
        }
    }
    
    return result
}