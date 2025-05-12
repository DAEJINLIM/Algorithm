import Foundation

func solution(_ numLog:[Int]) -> String {
    var result = ""
    var num = numLog.first!
    for n in numLog {
        if num + 1 == n {
            result += "w"
        } else if num - 1 == n {
            result += "s"
        } else if num + 10 == n {
            result += "d"
        } else if num - 10 == n {
            result += "a"
        }
        num = n
    }
    return result
}