import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var dic = [String: [String]]()
    
    for i in clothes {
        dic[i[1], default: [String]()].append(i[0])
    }
    
    return dic.map { $0.value.count }.map { $0 + 1 }.reduce(1, *) - 1
}