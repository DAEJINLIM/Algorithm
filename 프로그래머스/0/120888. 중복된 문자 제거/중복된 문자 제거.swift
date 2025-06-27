import Foundation

func solution(_ my_string:String) -> String {
    var result = ""
    for i in my_string.map { String($0) } {
        if !result.contains(i) {
            result += i
        }
    }
    return result
}