import Foundation

func solution(_ r1:Int, _ r2:Int) -> Int64 {
    var count: Int = 0
    
    func calRange(x: Int) -> (Int, Int) {
        var y1 = sqrt((pow(Double(r1),2.0) - pow(Double(x),2.0)))
        var y2 = sqrt((pow(Double(r2),2.0) - pow(Double(x),2.0)))
        return (Int(ceil(y1).isNaN ? 0 : ceil(y1)), Int(y2))
    }
    
    for i in 0...r2 {
        let range = calRange(x: i)
        count += (range.1 - range.0) + 1
    }
    
    count *= 4
    
    count -= ((r2 - r1) + 1) * 4
    
    return Int64(count)
}