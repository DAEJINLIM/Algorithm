import Foundation

func solution(_ dots:[[Int]]) -> Int {
    let dots = dots.sorted { $0[0] < $1[0] }
    return Float(dots[1][1] - dots[0][1]) / Float(dots[1][0] - dots[0][0]) == Float(dots[3][1] - dots[2][1]) / Float(dots[3][0] - dots[2][0]) ? 1 : 0
}