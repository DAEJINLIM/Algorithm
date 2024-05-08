let input = Int(readLine()!)!
var arr = [String]()

for i in 1...(input * 2) - 1 {
    if i <= input{
        let space = String(repeating: " ", count: input - i)
        let star = String(repeating: "*", count: (i * 2) - 1)
        print(space + star)
        if i != input {
            arr.append(space + star)
        }
    } else {
        print(arr.popLast()!)
    }
}