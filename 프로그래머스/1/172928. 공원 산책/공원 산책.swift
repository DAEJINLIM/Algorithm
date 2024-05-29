import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    var map = park.map { Array($0) }
    var current = (0,0)
    
    for (i, p) in park.enumerated() {
        if p.contains("S") {
            current = (i,p.map{ String($0) }.firstIndex(of: "S")!)
            break
        }
    }
    
    for route in routes {
        let split = route.split(separator: " ").map { String($0) }
        let (valid, newLocation) = move(current, split[0], Int(split[1])!, map)
        if valid {
            current = newLocation
        }
    }
    
    return [current.0, current.1]
}

func move(_ location: (Int, Int), _ direction: String, _ distance: Int, _ map: [[Character]]) -> (Bool, (Int, Int)) {
    let height = map.count
    let width = map[0].count
    var (x, y) = location
    
    for _ in 0..<distance {
        switch direction {
        case "E":
            y += 1
        case "W":
            y -= 1
        case "S":
            x += 1
        case "N":
            x -= 1
        default:
            break
        }
        
        if x < 0 || x >= height || y < 0 || y >= width || map[x][y] == "X" {
            return (false, location)
        }
    }
    
    return (true, (x, y))
}
