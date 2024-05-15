import Foundation

func cal(input: String) -> Int {
    let splitMinus = input.split(separator: "-")
    
    var plusResult: [Int] = []
    
    for part in splitMinus {
        let additionParts = part.split(separator: "+").map { Int($0)! }
        let sum = additionParts.reduce(0, +)
        plusResult.append(sum)
    }
    
    let result = plusResult.dropFirst().reduce(plusResult.first!) { $0 - $1 }
    
    return result
}

let input = readLine()!
print(cal(input: input))