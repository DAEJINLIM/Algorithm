import Foundation

func solution(_ s:String) -> Int{
    var arr = [Character]()
    
    for i in s {
        if arr.isEmpty {
            arr.append(i)
        } else if arr.last! == i {
            arr.removeLast()
        } else {
            arr.append(i)
        }
    }

    return arr.isEmpty ? 1 : 0
}