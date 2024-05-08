import Foundation

let input = Int(readLine()!)!

for _ in 0..<input {
    let input = readLine()!.split(separator: " ")
    let N = Int(input[0])!
    let M = Int(input[1])!
    
    if N == M {
        print("1")
    } else if N == 1 {
        print(M)
    } else {
        var a = "1"
        var b = "1"
        
        for i in M-N+1...M {
            a = NSDecimalNumber(string: String(a)).multiplying(by: NSDecimalNumber(string: String(i))).stringValue
        }
        for i in 1...N {
            b = NSDecimalNumber(string: String(b)).multiplying(by: NSDecimalNumber(string: String(i))).stringValue
        }
        
        print(NSDecimalNumber(string: a).dividing(by: NSDecimalNumber(string: b)))
    }
}