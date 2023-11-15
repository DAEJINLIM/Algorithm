import Foundation

func solution(_ s:String) -> Int {
    var a = [Int]()
    for i in s.components(separatedBy: " ") {
        if i == "Z" {
            a.popLast()
        } else {
            a.append(Int(i)!)
        }
    }
    return a.reduce(0, +)
}