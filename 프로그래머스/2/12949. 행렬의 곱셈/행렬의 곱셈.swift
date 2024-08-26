import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result = [[Int]]()
    var newArr2 = [[Int]]()
    
    for i in arr2[0].indices {
        var arr = [Int]()
        for j in arr2.indices {
            arr.append(arr2[j][i])
        }
        newArr2.append(arr)
    }
    for i in arr1.indices {
        var arr = [Int]()
        for j in newArr2.indices {
            arr.append(zip(arr1[i],newArr2[j]).map { $0 * $1 }.reduce(0, +))
        }
        result.append(arr)
    }
    
    return result
}