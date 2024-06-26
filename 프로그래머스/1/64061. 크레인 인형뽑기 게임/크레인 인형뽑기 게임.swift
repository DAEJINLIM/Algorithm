import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var arr = Array(repeating: [Int]() , count: board.count)
    var box = [Int]()
    var result = 0
    
    for i in 0..<board.count {
        for j in stride(from: board.count-1, through: 0, by: -1) {
            if board[j][i] > 0 {
                arr[i].append(board[j][i])
            }
        }
    }
    
    for i in moves {
        if let grab = arr[i-1].popLast() {
            if let lastDol = box.last {
                if lastDol == grab {
                    box.removeLast()
                    result += 2
                } else {
                    box.append(grab)
                }
            } else {
                box.append(grab)
            }
        }
    }
    
    return result
}