import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    var result = [Int]()
    
    for (i, n) in privacies.enumerated() {
        let DayAndType = n.split(separator: " ").map { String($0) }
        
        let month = Int(String(terms.filter { String($0.first!) == DayAndType[1] }[0].split(separator: " ").last!))!
        
        if (month * 28) <= calDday(today.split(separator: ".").map { Int($0)! }, DayAndType[0].split(separator: ".").map { Int($0)! }) {
            result.append(i+1)
        }
    }
    
    return result
}

func calDday(_ today: [Int], _ targetDay: [Int]) -> Int {
    var dDay = 0
    var targetDay = targetDay
    
    if today[2] < targetDay[2] {
        dDay += 28 - (targetDay[2] - today[2])
        targetDay[1] += 1
    } else {
        dDay += today[2] - targetDay[2]
    }
    if today[1] < targetDay[1] {
        let month = today[1] + (12 - targetDay[1])
        dDay += month * 28
        targetDay[0] += 1
    } else {
        dDay += (today[1] - targetDay[1]) * 28
    }
    
    if today[0] > targetDay[0] {
        let year = today[0] - targetDay[0]
        dDay += year * 336
    }
    
    return dDay
}