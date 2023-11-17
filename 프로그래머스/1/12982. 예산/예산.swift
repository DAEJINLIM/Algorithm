import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var a = budget
    var k = 0
    for i in d.sorted() {
        if a >= 0 {
            a -= i
            if a < 0 {
                break
            }
            k += 1
        }
    }
    return k
}
