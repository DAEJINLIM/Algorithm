import Foundation

func solution(_ s:String) -> [Int] {
    var num = s
    var change = 0
    var zero = 0
    
    while num != "1" {
        zero += num.filter({ $0 == "0" }).count
        num = num.replacingOccurrences(of: "0", with: "")
        num = String(num.count, radix: 2)
        change += 1
    }
    return [change, zero]
}