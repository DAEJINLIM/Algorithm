import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var dict: [String: Int] = [:]
    var result = players
    for (index, name) in players.enumerated() {
        dict[name] = index
    }
    for i in callings {
        let index = dict[i]!
        result.swapAt(index - 1, index)
        dict[i] = index - 1
        dict[result[index]] = index
    }
    return result
}