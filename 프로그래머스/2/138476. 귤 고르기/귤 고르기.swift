import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var dic = [Int: Int]()
    var k = k
    var kinds = 0
    
    for i in tangerine {
        if dic[i] == nil {
            dic[i] = 1
        } else {
            dic[i]! += 1
        }
    }
    
    for i in dic.sorted { $0.value > $1.value }.map { $0.value } {
        k -= i
        kinds += 1
        if k <= 0 {
            break
        }
    }
    
    return kinds
}