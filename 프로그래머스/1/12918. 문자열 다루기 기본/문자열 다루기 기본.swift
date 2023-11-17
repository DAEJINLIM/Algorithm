func solution(_ s:String) -> Bool {
    return s.count == 4 || s.count == 6 ? Int(s) ?? -1 >= 0 ? true : false : false
}
