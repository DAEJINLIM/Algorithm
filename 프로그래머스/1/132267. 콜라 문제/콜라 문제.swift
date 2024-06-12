import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var EmptyCoke = n
    var count = 0
    while true {
        count += (EmptyCoke / a) * b
        EmptyCoke = EmptyCoke % a == 0 ? (EmptyCoke / a) * b : (EmptyCoke / a) * b + (EmptyCoke % a)
        if EmptyCoke < a {
            break
        }
    }
    return count
}
