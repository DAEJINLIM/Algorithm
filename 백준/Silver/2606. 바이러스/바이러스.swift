import Foundation

let input = Int(readLine()!)!
let input2 = Int(readLine()!)!

var arr = [[Int]](repeating: [Int](), count: input + 1)

for _ in 0..<input2 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let (a, b) = (input[0], input[1])
    arr[a].append(b)
    arr[b].append(a)
}

func bfs(start: Int, arr: [[Int]]) -> Int {
    var visited = [Bool](repeating: false, count: arr.count)
    var queue = [start]
    visited[start] = true
    var count = 0
    
    while !queue.isEmpty {
        let node = queue.removeFirst()
        for i in arr[node] {
            if !visited[i] {
                visited[i] = true
                queue.append(i)
                count += 1
            }
        }
    }
    
    return count
}

print(bfs(start: 1, arr: arr))
