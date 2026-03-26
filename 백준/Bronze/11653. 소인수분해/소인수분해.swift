import Foundation

var n = Int(readLine()!)!

if n > 1 {
    for i in 2...n {
        while n % i == 0 {
            n /= i
            print(i)
        }
    }
}
