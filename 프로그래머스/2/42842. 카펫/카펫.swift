import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let amount = brown + yellow
    var result = [[Int]]()
    
    for i in 1...amount/2 {
        if amount % i == 0 {
            result.append([amount / i, i])
        }
    }
    
    for i in result {
        if (i[0] - 2) * 2 + (i[1] - 2) * 2 + 4 == brown {
            return i
        }
    }
    
    return [1]
}