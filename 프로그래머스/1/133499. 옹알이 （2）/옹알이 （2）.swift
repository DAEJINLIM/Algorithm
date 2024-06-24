import Foundation

func solution(_ babbling:[String]) -> Int {
    var count = 0
    
    for i in babbling {
        if i == "aya" || i == "ye" || i == "woo" || i == "ma" {
            count += 1
            continue
        }
        
        var word = i.map { String($0) }
        var lastWord = ""
        
        while word.count > 1 {
            let check = checkWords(word, lastWord)
            if check.0 {
                lastWord = check.1
                word.removeSubrange(0..<check.1.count)
            } else {
                break
            }
        }
        if word.isEmpty {
            count += 1
        }
    }
    return count
}

func checkWords(_ word: [String], _ lastWord: String) -> (Bool, String) {
    let a = word[0...1].joined()
    var b = ""
    if word.count > 2 {
        b = word[0...2].joined()
    }
    let checkWords = ["ye", "ma", "aya", "woo"].filter { $0 != lastWord }
    if checkWords.contains(a) {
        return (true, a)
    }
    if checkWords.contains(b) {
        return (true, b)
    }
    return (false, "")
}
