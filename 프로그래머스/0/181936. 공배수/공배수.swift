import Foundation

func solution(_ number:Int, _ n:Int, _ m:Int) -> Int {
    return number % n + number % m == 0 ? 1 : 0
}