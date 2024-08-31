import Foundation

func solution(_ numbers:[Int]) -> String {
    if numbers.reduce(0, +) == 0 { return "0" }
    var dic = [Int:[Int]]()
    var result = ""
    
    for i in numbers {
        dic[Int(String(String(i).first!))!, default: [Int]()].append(i)
    }
    
    for i in dic.sorted { $0.key > $1.key } {
        let value = i.value.sorted { String($0)+String($1) > String($1)+String($0) }
        
        for j in value {
            result.append(String(j))
        }
    }
    return result
}
