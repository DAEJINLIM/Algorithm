import Foundation

func solution(_ x: Int, _ y: Int, _ n: Int) -> Int {
    if x == y {
        return 0
    }
    
    var queue = [(y, 0)]
    var log = Set<Int>()
    log.insert(y)
    
    while !queue.isEmpty {
        let (current, steps) = queue.removeFirst()
        
        let nextValues = [current - n, isInteger(Float(current) / 2) ? current / 2 : 0, isInteger(Float(current) / 3) ? current / 3 : 0]
        
        for next in nextValues {
            if next == x {
                return steps + 1
            }
            
            if next > x && !log.contains(next) {
                queue.append((next, steps + 1))
                log.insert(next)
            }
        }
    }
    
    return -1
}
func isInteger(_ number: Float) -> Bool {
    return number == floor(number)
}