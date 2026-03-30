import Foundation

var n = Int(readLine()!)!
var count = 0

count += n / 5
n = n % 5

while true {
    if n % 2 == 0 {
        count += n / 2
        print(count)
        break
    } else {
        n += 5
        count -= 1
        if count < 0 {
            print(-1)
            break
        }
    }
}
