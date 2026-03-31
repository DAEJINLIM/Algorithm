import Foundation

var input = readLine()!

input = input.replacingOccurrences(of: "XXXX", with: "AAAA")
input = input.replacingOccurrences(of: "XX", with: "BB")

if input.filter({$0 == "X"}).count > 0 {
    print("-1")
} else {
    print(input)
}
