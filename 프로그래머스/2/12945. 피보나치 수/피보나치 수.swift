func solution(_ n:Int) -> Int {
    var a = 0
    var b = 1
    var result = 0
    for _ in 1..<n {
        result = a + b
        a = b % 1234567
        b = result % 1234567
    }
    return result % 1234567
}