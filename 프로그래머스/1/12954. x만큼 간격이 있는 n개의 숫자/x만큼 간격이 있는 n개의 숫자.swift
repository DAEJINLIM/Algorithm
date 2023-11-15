func solution(_ x:Int, _ n:Int) -> [Int64] {
    var k = Int()
    var a: [Int64] = []
    for i in 0..<n {
        a.append(Int64(x + i * x))
    }
    return a
}
