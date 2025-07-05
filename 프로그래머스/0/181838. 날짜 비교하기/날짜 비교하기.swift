import Foundation

func solution(_ date1:[Int], _ date2:[Int]) -> Int {
    return cal(date1) < cal(date2) ? 1 : 0
}

func cal(_ arr: [Int]) -> Int {
    return (arr[0] * 365) + (arr[1] * 30) + arr[2]
}