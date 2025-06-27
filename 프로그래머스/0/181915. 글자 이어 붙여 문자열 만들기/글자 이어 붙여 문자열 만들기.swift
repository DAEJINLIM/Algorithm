import Foundation

func solution(_ my_string:String, _ index_list:[Int]) -> String {
        return index_list.map { my_string.map { String($0) }[$0] }.joined()
}