import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
var (a,b,c,m) = (input[0], input[1], input[2], input[3])
var tired: Int = 0
var time: Int = 0

for _ in 0..<24 {
    if tired + a <= m {
        time += 1
        tired += a
    } else {
        tired -= c
        if tired < 0 {
            tired = 0
        }
    }
}

print(time * b)
