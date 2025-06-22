import Foundation

func solution(_ age:Int) -> String {
    return String(age).map { String(UnicodeScalar(UInt8(Int(String($0))! + 97))) }.joined()
}