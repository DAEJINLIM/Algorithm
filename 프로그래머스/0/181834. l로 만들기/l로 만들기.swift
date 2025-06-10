import Foundation

func solution(_ myString:String) -> String {
    return String(myString.map { $0 < "l" ? "l" : $0 })
}