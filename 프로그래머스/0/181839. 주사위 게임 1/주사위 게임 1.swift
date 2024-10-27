import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    return a % 2 == 1 && b % 2 == 1 ? Int(pow(Double(a),2)) + Int(pow(Double(b),2)) : (a+b) % 2 == 1 ? (a+b) * 2 : abs(a-b)
}