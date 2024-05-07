import Foundation

let input = Int(readLine()!) ?? 0
var array = [Int]()

for _ in 0..<input {
    let input = Int(readLine()!) ?? 0
    
    
    if input == 0 {
        if array.isEmpty {
            print("0")
        } else {
            var max = 0
            var index = 0
            for i in array.indices {
                if array[i] > max {
                    index = i
                    max = array[i]
                }
            }
            array[index] = 0
            print(max)
        }
    } else {
        array.append(input)
    }
}