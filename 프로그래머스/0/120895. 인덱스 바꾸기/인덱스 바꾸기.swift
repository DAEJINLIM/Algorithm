import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    var result = ""
    let arr = my_string.map { String($0) }
    for (index, num) in arr.enumerated() {
        if index == num1 {
            result += arr[num2]
        } else if index == num2 {
            result += arr[num1]
        } else {
            result += num
        }
    }
    return result
}