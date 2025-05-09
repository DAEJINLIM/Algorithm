import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int) -> Int {
    return a == b && b == c ? (a + b + c) * (a * a + b * b + c * c) * (a * a * a + b * b * b + c * c * c) : (a == b && b != c) || (a == c && b != c) || (b == c && a != b) ? (a + b + c) * (a * a + b * b + c * c) : a + b + c
}