import Foundation

func solution(_ n:Int, _ w:Int, _ num:Int) -> Int {
    var answer = 0
    var num = num
    
    while (num <= n) {
        num += 2 * (w - ((num - 1) % w) - 1) + 1
        answer += 1
    }
    
    return answer
}