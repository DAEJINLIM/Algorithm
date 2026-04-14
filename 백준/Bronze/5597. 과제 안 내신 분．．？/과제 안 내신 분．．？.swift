var arr = Array(repeating: false, count: 31)

arr[0] = true

for _ in 0..<28 {
    arr[Int(readLine()!)!] = true
}

print(arr.firstIndex(of: false)!)
print(arr.lastIndex(of: false)!)
