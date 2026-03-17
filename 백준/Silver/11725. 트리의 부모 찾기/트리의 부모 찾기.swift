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

var queue = [1]
var index = 0

while index < queue.count {
    let node = queue[index]
    index += 1
    
    for next in graph[node] {
        if parent[next] == 0 {
            parent[next] = node
            queue.append(next)
        }
    }
}

for i in 2...n {
    print(parent[i])
}
