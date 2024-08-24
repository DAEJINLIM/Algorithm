import Foundation

func solution(_ dot:[Int]) -> Int {
    return dot[0]*dot[1] > 0 ? dot[0] > 0 ? 1 : 3 : dot[0] > 0 ? 4 : 2
}