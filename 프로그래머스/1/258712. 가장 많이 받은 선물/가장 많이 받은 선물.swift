import Foundation

func solution(_ friends:[String], _ gifts:[String]) -> Int {
    var giftLog = Dictionary(uniqueKeysWithValues: friends.map { ($0, Array(repeating: 0, count: friends.count)) })
    var receiveGift = Dictionary(uniqueKeysWithValues: friends.map { ($0, 0) })
    
    for name in gifts {
        let splited = name.split(separator: " ").map { String($0) }
        let index = friends.firstIndex(of: splited[1])
        giftLog[splited[0]]![index!] += 1
    }
    
    for row in giftLog {
        for (index, count) in row.value.enumerated() {
            let ColumName = friends[index]
            if ColumName == row.key {
                continue
            }
            let findRowIndex  = friends.firstIndex(of: row.key)
            
            if count == giftLog[ColumName]![findRowIndex!] {
                let a = giftLog[row.key]!.reduce(0, +) - giftLog.values.map { $0[findRowIndex!] }.reduce(0, +)
                let b = giftLog[ColumName]!.reduce(0, +) - giftLog.values.map { $0[index] }.reduce(0, +)
                if a > b {
                    receiveGift[row.key]! += 1
                }
            }
            if count > 0 {
                if count > giftLog[ColumName]![findRowIndex!] {
                    receiveGift[row.key]! += 1
                }
            }
        }
    }
    
    return receiveGift.values.max()!
}