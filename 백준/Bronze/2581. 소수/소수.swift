import Foundation

let m = Int(readLine()!)!
let k = Int(readLine()!)!

var isPrime = Array(repeating: true, count: k + 1)
var result: [Int] = []

if k >= 0 { isPrime[0] = false }
if k >= 1 { isPrime[1] = false }

if k > 2 {
    for i in 2...Int(Double(k).squareRoot()) {
        if isPrime[i] {
            for j in stride(from: i * i, through: k, by: i) {
                isPrime[j] = false
            }
        }
    }
}

for i in m...k {
    if isPrime[i] {
        result.append(i)
    }
}

if result.isEmpty {
    print(-1)
} else {
    print(result.reduce(0, +))
    print(result.min()!)
}
