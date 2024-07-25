func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    var result = ""
    var turn = 1
    
    for i in 0..<t*m {
        for word in  String(i, radix: n).map { String($0).uppercased() } {
            if turn == p {
                result += word
            }
            turn += 1
            if turn > m {
                turn = 1
            }
            if result.count == t {
                return result
            }
        }
    }
    
    return result
}