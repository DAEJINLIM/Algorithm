import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var dict: [String:Int] = [:]
    var result = [Int]()
    
    for i in 0..<name.count {
        dict.updateValue(yearning[i], forKey: name[i])
    }
    
    for names in photo {
        var score = 0
        for name in names {
            if let index = dict.index(forKey: name) {
                score += dict[index].value
            }
        }
        result.append(score)
    }
    
    return result
}