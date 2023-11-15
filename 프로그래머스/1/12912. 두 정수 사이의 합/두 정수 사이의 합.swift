func solution(_ a:Int, _ b:Int) -> Int64 {
    var k = 0
    if a < b {
        for i in a...b {
            k += i
        }
    } else {
        for i in b...a {
            k += i
        }
    }
    return Int64(k)
}