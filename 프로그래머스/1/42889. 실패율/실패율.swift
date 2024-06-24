import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var arr = Array(repeating: 0, count: N + 2)
    var dic = [Int: Double]()
    
    for n in stages {
        arr[n] += 1
    }
    for (i, n) in arr.enumerated() {
        if i > 0 && i < N+1 {
            let a: Double = Double(n) / Double(arr[i+1..<arr.count].reduce(0, +))
            dic[i] = a >= 0 ? a : 0
        }
    }
    
    let nonZeroItems = dic.filter { $0.value > 0 }.sorted { $0.value == $1.value ? $0.key < $1.key :$0.value > $1.value}.map { $0.key }
    let zeroItems = dic.filter { $0.value == 0 }.sorted { $0.key < $1.key}.map { $0.key }

    let result = nonZeroItems + zeroItems
    
    return result
}