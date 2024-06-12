import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    return (n > b ? n - b : 0) / (a - b) * b
}