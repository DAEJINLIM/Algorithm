import Foundation

func solution(_ binomial:String) -> Int {
    let split = binomial.split(separator: " ").map { String($0) }
    
    switch split[1] {
        case "+":
        return Int(split[0])! + Int(split[2])!
        case "-":
        return Int(split[0])! - Int(split[2])!
        case "*":
        return Int(split[0])! * Int(split[2])!
        default:
        break
    }
    return 0
}