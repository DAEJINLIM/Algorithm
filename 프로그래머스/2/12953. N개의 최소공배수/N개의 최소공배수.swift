func solution(_ arr:[Int]) -> Int {
    return arr.reduce(1) { ($0 * $1) / gcd($0, $1) }
}

func gcd(_ a: Int, _ b: Int) -> Int {
    let k = a % b
    if k != 0 {
        return gcd(b, k)
    } else {
        return b
    }
}