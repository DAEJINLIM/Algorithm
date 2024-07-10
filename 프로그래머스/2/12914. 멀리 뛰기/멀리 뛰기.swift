func solution(_ n:Int) -> Int {
    var a = 1
    var b = 2
    
    if n == 1 {
        return 1
    }
    if n == 2 {
        return 2
    }
    
    for i in 3...n {
        let temp = b
        b = (a + b) % 1234567
        a = temp
    }
    
    return b % 1234567
}