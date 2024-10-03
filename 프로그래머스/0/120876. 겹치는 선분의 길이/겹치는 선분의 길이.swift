import Foundation

func solution(_ lines:[[Int]]) -> Int {
    var arr = Array(repeating: 0, count: 201)
    
    for line in lines {
        for i in line[0]+100..<line[1]+100 {
            arr[i] += 1
        }
    }
    
    return arr.filter { $0 > 1 }.count
}