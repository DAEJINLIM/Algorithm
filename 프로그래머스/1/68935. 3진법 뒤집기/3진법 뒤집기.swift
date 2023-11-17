import Foundation

func solution(_ n:Int) -> Int {
    var a = n
    var s = Int()
    var k = [Int]()
    while a >= 1 {
        k.append(a % 3)    
        a = a / 3
    }
    print(k)
    for (i, n) in k.enumerated() {
        let k = k.count - i - 1
        s += n * Int(pow(3.0, Double(k)))
    }
    return s
}