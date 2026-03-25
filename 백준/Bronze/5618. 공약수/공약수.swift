import Foundation

let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int($0)! }

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}

var g = input[0]

for i in 1..<n {
    g = gcd(g, input[i])
}

var result: [Int] = []

for i in 1...Int(Double(g).squareRoot()) {
    if g % i == 0 {
        result.append(i)
        if i != g / i {
            result.append(g / i)
        }
    }
}

result.sorted().forEach { print($0) }
