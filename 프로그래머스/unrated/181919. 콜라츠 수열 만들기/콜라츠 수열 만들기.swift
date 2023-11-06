import Foundation

func solution(_ n:Int) -> [Int] {
    guard n >= 1 , n <= 1000 else { return [n] }
    var result = [n]
    var a = n
    while a != 1 {
           if a % 2 == 0 {
               a = a / 2
           } else {
               a = (a * 3) + 1
           }
        result.append(a)
       }
    return result
}
