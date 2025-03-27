import Foundation

func solution(_ num_list:[Int]) -> Int {
    return Int(num_list.map { $0 % 2 == 1 ? String($0) : "" }.joined())! + Int(num_list.map { $0 % 2 == 0 ? String($0) : "" }.joined())!
}