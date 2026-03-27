import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let (a, b) = (input[0], input[1])

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}

let value = gcd(a,b)

print("\(value)\n\(a/value*b)")
