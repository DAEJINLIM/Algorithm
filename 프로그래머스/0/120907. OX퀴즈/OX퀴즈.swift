import Foundation

func solution(_ quiz:[String]) -> [String] {
    return quiz.map { cal($0) }
}

func cal(_ a: String) -> String {
    let split = a.split { $0 == " " }.map { Int($0) ?? 0 }
    if a.contains("+") {
        if split[0] + split[2] == split[4] {
            return "O"
        } else {
            return "X"
        }
    } else {
        if split[0] - split[2] == split[4] {
            return "O"
        } else {
            return "X"
        }
    }
}