import Foundation

let n = Int(String(readLine()!))!
var tree = Array(repeating: 0, count: n + 1)

for _ in 0..<n-1 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    tree[input[0]] += 1
    tree[input[1]] += 1
}

let q = Int(String(readLine()!))!

for _ in 0..<q {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    
    if input[0] == 1 {
        tree[input[1]] > 1 ? print("yes") : print("no")
    } else {
        print("yes")
    }
}
