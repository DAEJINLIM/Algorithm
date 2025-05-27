import Foundation

func solution(_ my_string:String) -> [String] {
    return (1...my_string.count).map { my_string.map { String($0) }.suffix($0).joined() }.sorted()
}