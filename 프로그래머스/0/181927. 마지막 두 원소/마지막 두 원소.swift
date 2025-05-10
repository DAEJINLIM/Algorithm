import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    let a = num_list[num_list.count - 2]
    let b = num_list[num_list.count - 1]
    return num_list + [b > a ? b - a : 2 * b]
}