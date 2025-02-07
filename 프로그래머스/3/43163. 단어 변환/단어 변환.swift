import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    if !words.contains(target) {
        return 0
    }
    
    var queue = [(begin, 0)]
    var visited = Set<String>()
    visited.insert(begin)
    
    while !queue.isEmpty {
        let (current, steps) = queue.removeFirst()
        
        for word in words {
            if !visited.contains(word) && canConvert(current, word) {
                if word == target {
                    return steps + 1
                }
                queue.append((word, steps + 1))
                visited.insert(word)
            }
        }
    }
    
    return 0
}

func canConvert(_ from: String, _ to: String) -> Bool {
    var diffCount = 0
    for i in 0..<from.count {
        if from[from.index(from.startIndex, offsetBy: i)] != to[to.index(to.startIndex, offsetBy: i)] {
            diffCount += 1
        }
        if diffCount > 1 {
            return false
        }
    }
    return diffCount == 1
}