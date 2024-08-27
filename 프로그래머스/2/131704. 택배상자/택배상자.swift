import Foundation

func solution(_ order:[Int]) -> Int {
    var tempBalt = [Int]()
    var count = 0
    
    for i in 1...order.count {
        if i == order[count] {
            count += 1
            
            if !tempBalt.isEmpty {
                while order[count] == tempBalt.last! {
                    tempBalt.removeLast()
                    count += 1
                    
                    if tempBalt.isEmpty {
                        break
                    }
                }
            }
            
        } else {
            tempBalt.append(i)
        }
    }
    
    return count
}