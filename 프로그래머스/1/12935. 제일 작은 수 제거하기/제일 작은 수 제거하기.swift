
func solution(_ arr:[Int]) -> [Int] {
    let m = arr.min()
    let a = arr.filter { $0 != m }
    return a.isEmpty ? [-1] : a
}
