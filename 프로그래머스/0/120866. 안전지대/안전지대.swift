import Foundation

func solution(_ board:[[Int]]) -> Int {
    var board = board
    let directions = [(-1,0), (-1,-1), (0,-1), (1,-1), (1,0), (1,1), (0,1), (-1,1)]
    
    for i in 0..<board[0].count {
        for j in 0..<board.count {
            if board[i][j] == 1 {
                for dic in directions {
                    let row = i + dic.0
                    let col = j + dic.1
                    
                    if row >= 0 && col >= 0 && row < board.count && col < board[0].count {
                        if board[row][col] != 1 {
                            board[row][col] = 2
                        }
                    }
                }
            }
        }
    }
    
    return board.joined().filter{ $0 == 0 }.count
}

