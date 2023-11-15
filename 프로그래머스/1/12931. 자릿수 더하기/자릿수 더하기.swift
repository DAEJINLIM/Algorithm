import Foundation

func solution(_ n:Int) -> Int
{
    var a = 0
    
    for i in String(n).map { Int(String($0))} {
        a += i ?? 0
    }
    return a
}

