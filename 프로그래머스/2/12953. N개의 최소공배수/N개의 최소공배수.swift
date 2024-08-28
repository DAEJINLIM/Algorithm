func solution(_ arr:[Int]) -> Int {
    var arr = arr.sorted(by: >)
    
    while arr.count != 1 {
        let a = arr.removeFirst()
        let b = arr.removeFirst()
        arr.insert((a * b) / gcd(a, b), at: 0)
    }
    
    return arr[0]
}

func gcd(_ a: Int, _ b: Int) -> Int {
    let k = a % b
    if k != 0 {
        return gcd(b, k)
    } else {
        return b
    }
}