import Foundation

let input = Int(readLine()!)!
var arr = [Int: [String]]()

for _ in 0..<input {
    let word = readLine()!
    if arr[word.count] == nil {
        arr[word.count] = [word]
    } else {
        arr[word.count]?.append(word)
    }
}

for i in arr {
    arr[i.key] = Array(Set(i.value))
    arr[i.key]!.sort(by: <)
}

for i in arr.sorted(by: { $0.key < $1.key }) {
    for w in i.value {
        print(w)
    }
}