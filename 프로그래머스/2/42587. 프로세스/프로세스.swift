import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var queue = priorities
    var loca = location
    var count = 0
    
    while !queue.isEmpty {
        let max = queue.max() ?? 0
        let pop = queue.removeFirst()
        if pop >= max {
            count += 1
            if loca == 0 {
                return count
            }
        } else {
            queue.append(pop)
        }
        loca -= 1
        if loca < 0 {
            loca = queue.count - 1
        }
    }
    
    return priorities.count
}