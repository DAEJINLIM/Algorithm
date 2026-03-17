import Foundation

let n = Int(String(readLine()!))!

var graph = Array(repeating: [Int](), count: n + 1)
var parent = Array(repeating: 0, count: n + 1)

for _ in 0..<n-1 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0]
    let b = input[1]
    
    graph[a].append(b)
    graph[b].append(a)
}

func dfs(_ p: Int) {
    for i in graph[p] {
        if parent[i] != 0 { continue }
        parent[i] = p
        dfs(i)
    }
}

dfs(1)

for i in 2...n {
    print(parent[i])
}
