func minX (_ a: Int) -> [Int] {
    var k = [Int]()
    for i in 1...a {
        if a % i == 0 {
            k.append(i)
        }
    }
    return k
}

func solution(_ n:Int, _ m:Int) -> [Int] {
    var z = 0
    var x = 0
    for i in minX(n) {
        if let lastValue = minX(m).filter({ $0 == i }).last {
            z = lastValue
        }
    }
    
    return [z, ( n * m ) / z]
}