import Foundation

func solution(_ my_string:String) -> [Int] {
    return my_string.map { Int(String($0)) ?? -1 }.filter { $0 >= 0 }.sorted() 
}