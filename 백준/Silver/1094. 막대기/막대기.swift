import Foundation

let input = Int(readLine()!)!
var sticks = [64]

if input == 64 || input == 1{
    print("1")
} else {
    while true {
        sticks = sticks.sorted().reversed()
        
        let last = sticks.popLast()! / 2
        
        if last + sticks.reduce(0, +) >= input {
            sticks.append(last)
        } else {
            sticks.append(last)
            sticks.append(last)
        }
        
        if sticks.reduce(0, +) == input {
            print(sticks.count)
            break
        }
    }
}