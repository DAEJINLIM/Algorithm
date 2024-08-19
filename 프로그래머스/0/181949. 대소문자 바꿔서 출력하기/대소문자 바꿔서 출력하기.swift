import Foundation

let s1 = readLine()!
var s2 = ""

for i in s1 {
    s2 += i.isUppercase ? String(i.lowercased()) : String(i.uppercased())
}

print(s2)