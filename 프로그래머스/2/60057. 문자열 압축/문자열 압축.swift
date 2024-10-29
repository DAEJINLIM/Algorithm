import Foundation

func solution(_ s:String) -> Int {
    var result = 1000
    
    if s.count == 1 { return 1}
    
    for i in 1...s.count {
        if let temp = trans(s: s, unit: i) {
            result = min(temp.count, result)
        }
    }
    
    return result
}

func trans(s: String, unit: Int) -> String? {
    var input = s.map { String($0) }
    var que = ""
    var count = 1
    var result = ""
    
    while !input.isEmpty {
        if que.isEmpty {
            for _ in 0..<unit {
                que += input.removeFirst()
            }
        } else {
            var temp = ""
            for _ in 0..<unit {
                if !input.isEmpty {
                    temp += input.removeFirst()
                }
            }
            if que == temp {
                que = temp
                count += 1
                
                if input.isEmpty {
                    result += "\(count)\(que)"
                }
            } else {
                result += count > 1 ? "\(count)\(que)" : que
                que = temp
                count = 1
                if input.isEmpty {
                    result += que
                }
            }
        }
    }
    return result.isEmpty ? nil : result
}