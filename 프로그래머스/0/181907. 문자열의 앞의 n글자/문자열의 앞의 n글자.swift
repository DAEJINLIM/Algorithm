import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    return String(my_string.map { $0 }[0..<n])
}
