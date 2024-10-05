import Foundation

func solution(_ dirs:String) -> Int {
    var arr = Set<[Int]>()
    var loc = (5,5)
    
    for i in dirs {
        switch i {
        case "U":
            if loc.0 + 1 > 10 { continue }
            let a = loc
            loc.0 += 1
            let b = loc
            arr.insert([a.0,a.1,b.0,b.1])
        case "D":
            if loc.0 - 1 < 0 { continue }
            let b = loc
            loc.0 -= 1
            let a = loc
            arr.insert([a.0,a.1,b.0,b.1])
        case "L":
            if loc.1 - 1 < 0 { continue }
            let b = loc
            loc.1 -= 1
            let a = loc
            arr.insert([a.0,a.1,b.0,b.1])
        case "R":
            if loc.1 + 1 > 10 { continue }
            let a = loc
            loc.1 += 1
            let b = loc
            arr.insert([a.0,a.1,b.0,b.1])
        default:
            continue
        }
    }
    
    return arr.count
}
