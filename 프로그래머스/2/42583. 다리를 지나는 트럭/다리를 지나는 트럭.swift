import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var queue = Array(repeating: 0, count: bridge_length)
    var trucks = truck_weights
    var nowWeight = 0
    var count = 0
    
    while !trucks.isEmpty  {
        if nowWeight + trucks[0] - queue[0] <= weight {
            let truck = trucks.removeFirst()
            queue.append(truck)
            nowWeight += truck
        } else {
            queue.append(0)
        }
        
        let item = queue.removeFirst()
        if item > 0 {
            nowWeight -= item
        }
        
        count += 1
    }
    
    return count + (queue.lastIndex { $0 > 0 } ?? -1) + 1
}