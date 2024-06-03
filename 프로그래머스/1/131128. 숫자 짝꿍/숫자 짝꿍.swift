import Foundation

func solution(_ X:String, _ Y:String) -> String {
    var result = [Character]()
    var freqX = [Character: Int]()
    var freqY = [Character: Int]()
    
    for i in X {
        freqX[i, default: 0] += 1
    }
    for i in Y {
        freqY[i, default: 0] += 1
    }
    
    for i in 0..<10 {
        let char = Character(String(i))
        if let xValue = freqX[char], let yValue = freqY[char] {
            for _ in 0..<min(xValue, yValue) {
                result.append(char)
            }
        }
    }
    
    if result.isEmpty {
        return "-1"
    }
    
    if result.filter({ $0 != "0" }).isEmpty {
        return "0"
    }
    
    result.sort(by: >)
    
    return String(result)
}