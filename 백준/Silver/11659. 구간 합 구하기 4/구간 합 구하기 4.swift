import Foundation

let firstInput = readLine()!.split(separator: " ").map { Int($0)! }
let N = firstInput[0]
let M = firstInput[1]

let arr = readLine()!.split(separator: " ").map { Int($0)! }

var prefixSum = [Int](repeating: 0, count: N + 1)
for i in 1...N {
    prefixSum[i] = prefixSum[i - 1] + arr[i - 1]
}

for _ in 0..<M {
    let query = readLine()!.split(separator: " ").map { Int($0)! }
    let i = query[0]
    let j = query[1]
    
    let result = prefixSum[j] - prefixSum[i - 1]
    print(result)
}
