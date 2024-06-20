func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    let a = arr1.map { String($0, radix: 2).count < n ? String(repeating: "0", count: n - String($0, radix: 2).count) + String($0, radix: 2) : String($0, radix: 2) }.map { $0.map { Int(String($0))!} }
    let b = arr2.map { String($0, radix: 2).count < n ? String(repeating: "0", count: n - String($0, radix: 2).count) + String($0, radix: 2) : String($0, radix: 2) }.map { $0.map { Int(String($0))!} }
    
    for i in 0..<n {
        var line = ""
        for j in 0..<n {
            if a[i][j] | b[i][j] == 1 {
                line += "#"
            } else {
                line += " "
            }
        }
        answer.append(line)
    }
    
    return answer
}