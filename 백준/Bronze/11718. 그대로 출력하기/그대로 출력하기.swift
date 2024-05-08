import Foundation
var strings = [String]()
while true {
    let input = readLine() ?? ""
    if input.isEmpty {
        break
    }
    strings.append(input)
}

for i in strings {
    print(i)
}