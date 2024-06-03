import Foundation

func solution(_ s:String) -> Int {
    var first = String(s.first!)
    var result = [String]()
    var arr = s.map { String($0) }
    
    var same = 0
    var different = 0
    var word = ""
    
    while !arr.isEmpty {
        for (index, i) in arr.enumerated() {
            if first == i {
                same += 1
                word += i
            } else {
                different += 1
                word += i
            }
            
            arr.removeFirst()
            
            if same == different {
                result.append(word)
                if arr.isEmpty {
                    break
                }
                first = arr.first!
                (same, different) = (0, 0)
                word = ""
                
                break
            }
            
            if arr.isEmpty {
                result.append(word)
            }
        }
    }
    
    return result.count
}