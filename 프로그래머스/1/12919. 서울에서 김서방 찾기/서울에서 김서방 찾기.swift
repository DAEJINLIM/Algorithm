func solution(_ seoul:[String]) -> String {
    for (i, n) in seoul.enumerated() {
        if n == "Kim" {
            return "김서방은 \(i)에 있다"
        }
    }
    return ""
}
