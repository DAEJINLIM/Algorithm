
let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0]
    let b = input[1]
    
    var result = 1
    
    for i in 0..<a {
        result *= (b - i)
        result /= (i + 1)
    }
    
    print(result)
}
