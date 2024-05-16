import Foundation

func start(N: Int, r: Int, c: Int) -> Int {
    return recursion(N: N, r: r, c: c, size: 1 << N, row: 0, col: 0, count: 0)
}

func recursion(N: Int, r: Int, c: Int, size: Int, row: Int, col: Int, count: Int) -> Int {
    if size == 1 {
        return count
    }
    
    let halfSize = size / 2
    let areaSize = halfSize * halfSize
    if r < row + halfSize {
        if c < col + halfSize {
            return recursion(N: N, r: r, c: c, size: halfSize, row: row, col: col, count: count)
        } else {
            return recursion(N: N, r: r, c: c, size: halfSize, row: row, col: col + halfSize, count: count + areaSize)
        }
    } else {
        if c < col + halfSize {
            return recursion(N: N, r: r, c: c, size: halfSize, row: row + halfSize, col: col, count: count + 2 * areaSize)
        } else {
            return recursion(N: N, r: r, c: c, size: halfSize, row: row + halfSize, col: col + halfSize, count: count + 3 * areaSize)
        }
    }
}

let input = readLine()!.split(separator: " ").map({ Int($0)! })
let N = input[0]
let r = input[1]
let c = input[2]
let result = start(N: N, r: r, c: c)
print(result)