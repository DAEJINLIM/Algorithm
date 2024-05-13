import Foundation

func bfs(_ n: Int, _ k: Int) -> Int {
    var visited = Array(repeating: false, count: 100001)
    var queue = [(n, 0)]
    visited[n] = true
    
    while !queue.isEmpty {
        let current = queue.removeFirst()
        let position = current.0
        let time = current.1
        
        if position == k {
            return time
        }
        
        let walkPositions = [position - 1, position + 1]
        let teleportPosition = position * 2
        
        for nextPosition in walkPositions + [teleportPosition] {
            if nextPosition >= 0 && nextPosition <= 100000 && !visited[nextPosition] {
                queue.append((nextPosition, time + 1))
                visited[nextPosition] = true
            }
        }
    }
    
    return -1
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let k = input[1]

print(bfs(n, k))
