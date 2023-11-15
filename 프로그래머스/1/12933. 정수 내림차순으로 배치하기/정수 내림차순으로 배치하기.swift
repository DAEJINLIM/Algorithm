func solution(_ n:Int64) -> Int64 {
    let a = String(Array(String(n)).sorted(by: >))
    return Int64(a)!
}