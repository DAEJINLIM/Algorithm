import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    let a = num_list.filter { $0 % 2 == 0 }.count
    return [a, num_list.count - a]
}