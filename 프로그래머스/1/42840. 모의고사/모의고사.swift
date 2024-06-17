import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var a = ([1,2,3,4,5], 0)
    var b = ([2,1,2,3,2,4,2,5], 0)
    var c = ([3,3,1,1,2,2,4,4,5,5], 0)
    
    for i in answers {
        if i == a.0[0] {
            a.1 += 1
        }
        if i == b.0[0] {
            b.1 += 1
        }
        if i == c.0[0] {
            c.1 += 1
        }
        a.0.append(a.0.removeFirst())
        b.0.append(b.0.removeFirst())
        c.0.append(c.0.removeFirst())
    }
    if a.1 > b.1 && a.1 > c.1 {
        return [1]
    } else if b.1 > a.1 && b.1 > c.1 {
        return [2]
    } else if c.1 > a.1 && c.1 > b.1 {
        return [3]
    } else {
        if a.1 == b.1 && a.1 > c.1 {
            return [1,2]
        } else if a.1 == c.1 && a.1 > b.1 {
            return [1,3]
        } else if b.1 == c.1 && b.1 > a.1 {
            return [2,3]
        } else {
            return [1,2,3]
        }
    }
    return [1]
}