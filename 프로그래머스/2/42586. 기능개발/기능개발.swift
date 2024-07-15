import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var arr = [Int]()
    var dic = [Int: Int]()
    
    for (p,s) in zip(progresses, speeds) {
        let day = Int(ceil(Double(100-p) / Double(s)))
        if let last = arr.last {
            arr.append(max(last, day))
        } else {
            arr.append(day)
        }
    }
    
    for i in arr {
        if dic[i] == nil {
            dic[i] = 1
        } else {
            dic[i]! += 1
        }
    }
    
    return dic.sorted { $0.key < $1.key }.map { $0.value }
}