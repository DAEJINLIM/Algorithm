func solution(_ num:Int) -> Int {
    if num == 1 { return 0 }
    var r = num
    var count = 0
    while r != 1 {
        if r.isMultiple(of: 2) {
            r = r / 2
        } else {
            r = r * 3 + 1
        }
        count += 1
    }
    return count >= 500 ? -1 : count
}