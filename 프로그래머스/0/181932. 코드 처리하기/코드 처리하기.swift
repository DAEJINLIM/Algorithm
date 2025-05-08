import Foundation

func solution(_ code:String) -> String {
    var mode = false
    var result = ""
    
    for (i, c) in code.map { String($0) }.enumerated() {
        if mode {
            if c == "1" {
                mode.toggle()
            } else if i % 2 == 1 {
                result += c
            }
        } else {
            if c == "1" {
                mode.toggle()
            } else if i % 2 == 0 {
                result += c
            }
        }
    }
    return result.isEmpty ? "EMPTY" : result
}