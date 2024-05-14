
import Foundation

func isBroken(num: Int, brokenButtons: [Int]) -> Bool {
    if num == 0 {
        return brokenButtons.contains(0)
    }
    var n = num
    while n > 0 {
        if brokenButtons.contains(n % 10) {
            return true
        }
        n /= 10
    }
    return false
}

func pressButtons(num: Int, brokenButtons: [Int]) -> Int {
    var count = abs(num - 100)
    
    for i in 0...1000000 {
        if !isBroken(num: i, brokenButtons: brokenButtons) {
            count = min(count, String(i).count + abs(num - i))
        }
    }
    return count
}

let channel = Int(readLine()!)!
let brokenCount = Int(readLine()!)!
var brokenButtons = [Int]()
if brokenCount > 0 {
    brokenButtons = readLine()!.split(separator: " ").map { Int($0)! }
}

print(pressButtons(num: channel, brokenButtons: brokenButtons))
