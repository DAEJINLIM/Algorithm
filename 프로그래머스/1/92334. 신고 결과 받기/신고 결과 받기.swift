import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var reports: [String: Set<String>] = [:]
    var users = Dictionary(uniqueKeysWithValues: id_list.map { ($0, 0) })
    
    for i in report {
        let info = i.split(separator: " ").map { String($0) }
        if reports[info[1]] != nil {
            reports[info[1]]?.insert(info[0])
        } else {
            reports[info[1]] = [info[0]]
        }
    }
    
    for i in reports.filter({ $0.value.count >= k }) {
        for k in reports[i.key]! {
            users[k]! += 1
        }
    }
    return id_list.map { users[$0]! }
}