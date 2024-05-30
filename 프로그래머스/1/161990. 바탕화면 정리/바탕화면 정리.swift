import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var map = wallpaper.map { Array(String($0)) }
    var (lux, luy, rdx, rdy) = (0,0,map.count,map[0].count)
    
    while let top = map.first, !top.contains("#") {
        map.removeFirst()
        lux += 1
    }
    while let bottom = map.last, !bottom.contains("#") {
        map.removeLast()
        rdx -= 1
    }
    
    while !map.map({ $0[0] }).contains("#") {
        for i in 0..<map.count {
            map[i].removeFirst()
        }
        luy += 1
    }
    
    while !map.map({ $0.last }).contains("#") {
        for i in map.indices.reversed() {
            map[i].removeLast()
        }
        rdy -= 1
    }
    return [lux, luy, rdx, rdy]
}