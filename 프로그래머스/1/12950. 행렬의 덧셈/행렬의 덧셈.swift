func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var a = [[Int]]()
    for (row1, row2) in zip(arr1, arr2) {
            a.append(zip(row1, row2).map { $0 + $1 })
        }
    return a
}