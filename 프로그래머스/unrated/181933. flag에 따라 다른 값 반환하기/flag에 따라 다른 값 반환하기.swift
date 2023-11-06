import Foundation

func solution(_ a:Int, _ b:Int, _ flag:Bool) -> Int {
    var result = Int()
    if flag {
        result = a + b
    } else {
        result = a - b
    }
    return result
}