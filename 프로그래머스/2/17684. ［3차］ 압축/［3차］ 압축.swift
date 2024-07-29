func solution(_ msg:String) -> [Int] {
    var dic = [String:Int]()
    var msgArr = msg.map { String($0) }
    var output = [Int]()
    
    for i in 65...90 { dic[String(UnicodeScalar(UInt8(i)))] = i-64 }
    
    while !msgArr.isEmpty {
        var reads = msgArr.removeFirst()
        for input in msgArr {
            if dic.keys.contains(reads + input) {
                reads += input
            } else {
                output.append(dic[reads]!)
                dic[reads+input] = dic.count + 1
                break
            }
            msgArr.removeFirst()
        }
        if msgArr.isEmpty {
            output.append(dic[reads]!)
        }
    }
    
    return output
}