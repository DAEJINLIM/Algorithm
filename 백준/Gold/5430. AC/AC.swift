import Foundation

func RD(_ RDs: String, _ count: Int, _ array: [String]) {
    var isReversed = false
    var front = 0
    var back = count
    
    for i in RDs {
        if i == "R" {
            isReversed.toggle()
        } else if i == "D" {
            if isReversed {
                back -= 1
            } else {
                front += 1
            }
        }
        
        if front > back { break }
    }
    if front > back {
        print("error")
    } else {
        if isReversed {
            print("[\(array[front..<back].reversed().joined(separator: ","))]")
        } else {
            print("[\(array[front..<back].joined(separator: ","))]")
        }
    }
    
}

let input = Int(readLine()!)!

for _ in 0..<input {
    let inputRD = readLine()!
    let arrCount = Int(readLine()!)!
    let input = readLine()!.trimmingCharacters(in: CharacterSet(charactersIn: "[]"))
    
    let arr = input.split(separator: ",").map { String($0) }
    RD(inputRD, arrCount, arr)
}
