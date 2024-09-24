import Foundation

func solution(_ n:Int, _ control:String) -> Int {
    return control.map { $0 == "w" ? 1 : $0 == "s" ? -1 : $0 == "d" ? 10 : -10 }.reduce(0, +) + n
}
