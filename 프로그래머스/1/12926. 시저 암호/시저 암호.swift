func solution(_ s:String, _ n:Int) -> String {
    var result = [Int]()
    var arr = s.map { Int($0.unicodeScalars.first!.value) }
    for i in arr {
        let shift = i + n
        if i > 96 {
            result.append(shift > 122 ? shift - 26: shift)
        } else if i > 64 {
            result.append(shift > 90 ? shift - 26: shift)
        } else {
            result.append(i)
        }
    }
    return result.map { String(UnicodeScalar($0)!) }.joined()
}