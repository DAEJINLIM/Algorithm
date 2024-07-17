import Foundation

func solution(_ s:String) -> Int {
    var ss = s
    var count = 0
    
    for _ in 0..<s.count {
        var large = 0
        var middle = 0
        var small = 0
        
        for i in ss {
            if i == "{" {
                large += 1
            }
            if i == "}" {
                large -= 1
            }
            if i == "[" {
                middle += 1
            }
            if i == "]" {
                middle -= 1
            }
            if i == "(" {
                small += 1
            }
            if i == ")" {
                small -= 1
            }
            
            if large < 0 || middle < 0 || small < 0 {
                break
            }
        }
        if large == 0 && middle == 0 && small == 0 {
            if ss.contains("{}") || ss.contains("[]") || ss.contains("()") {
                count += 1
            }
        }
        
        let first = ss.removeFirst()
        ss.append(first)
    }
    
    
    return count
}