
import Foundation

struct Plan {
    let name: String
    let start: Int
    let end: Int
}

struct Waiting {
    let name: String
    var time: Int
}

func timeToMinute(_ time: String) -> Int {
    return Int(time.split(separator: ":")[0])! * 60 + Int(time.split(separator: ":")[1])!
}

func solution(_ plans:[[String]]) -> [String] {
    var result = [String]()
    var waiting = [Waiting]()
    var newPlans = [Plan]()
    var lastEndTime = 0

    for i in plans.sorted { timeToMinute($0[1]) < timeToMinute($1[1]) } {
        let minute = timeToMinute(i[1])
        newPlans.append(Plan(name: i[0], start: minute, end: minute + Int(i[2])!))
    }
    
    for i in newPlans.indices {
        if i != newPlans.count - 1 {
            
            if newPlans[i].end > newPlans[i+1].start {
                waiting.insert(Waiting(name: newPlans[i].name, time: newPlans[i].end - newPlans[i+1].start), at: 0)
            }
            
            if newPlans[i].end == newPlans[i+1].start {
                result.append(newPlans[i].name)
            }
            
            if newPlans[i].end < newPlans[i+1].start {
                result.append(newPlans[i].name)
                
                for i in 0..<newPlans[i+1].start - newPlans[i].end {
                    if let _ = waiting.first {
                        waiting[0].time -= 1
                        if waiting[0].time == 0 {
                            result.append(waiting[0].name)
                            waiting.removeFirst()
                        }
                    }
                    lastEndTime += 1
                }
            }
            
        } else {
            lastEndTime += newPlans[i-1].end
            
            if lastEndTime < newPlans[i].start {
                for _ in 0..<newPlans[i].start - lastEndTime {
                    if let _ = waiting.first {
                        waiting[0].time -= 1
                        if waiting.count == 1 {
                        }
                        if waiting[0].time == 0 {
                            result.append(waiting[0].name)
                            waiting.removeFirst()
                        }
                    }
                    lastEndTime += 1
                    if lastEndTime == newPlans[i].start {
                        result.append(newPlans[i].name)
                        break
                    }
                }
            } else {
                result.append(newPlans[i].name)
            }
        }
    }
    
    for i in waiting {
        result.append(i.name)
    }
    
    return result
}