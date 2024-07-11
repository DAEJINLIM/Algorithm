import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var arr = Set<String>()
    var people = Array(repeating: 0, count: n + 1)
    var lastWord = words.first!
    var who = 0
    
    for i in words.indices {
        let count = arr.count
        
        if arr.isEmpty {
            arr.insert(words[i])
            
            people[i % n] += 1
            
            who += 1
            
            continue
        } else {
            arr.insert(words[i])
            
            people[i % n] += 1
            
            who += 1
        }
        
        if count == arr.count {
            return [who, people[who-1]]
        }
        if lastWord.last! != words[i].first! {
            return [who, people[who-1]]
        }
        lastWord = words[i]
        
        who = who % n
    }
    
    return [0, 0]
}