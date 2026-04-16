import Foundation

final class FastScanner {
    private var data: [UInt8] = Array(FileHandle.standardInput.readDataToEndOfFile()) + [0]
    private var idx: Int = 0

    func readInt() -> Int {
        var sum = 0
        var sign = 1

        while data[idx] == 10 || data[idx] == 32 {
            idx += 1
        }

        if data[idx] == 45 {
            sign = -1
            idx += 1
        }

        while data[idx] >= 48 && data[idx] <= 57 {
            sum = sum * 10 + Int(data[idx] - 48)
            idx += 1
        }

        return sum * sign
    }
}

let scanner = FastScanner()
let t = scanner.readInt()

var output = ""

for _ in 0..<t {
    let n = scanner.readInt()

    var minValue = Int.max
    var maxValue = Int.min

    for _ in 0..<n {
        let num = scanner.readInt()
        if num < minValue { minValue = num }
        if num > maxValue { maxValue = num }
    }

    output += "\(minValue) \(maxValue)\n"
}

FileHandle.standardOutput.write(output.data(using: .utf8)!)
