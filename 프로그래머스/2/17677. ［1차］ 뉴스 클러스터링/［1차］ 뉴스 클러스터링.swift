func solution(_ str1:String, _ str2:String) -> Int {
    var dic1 = [String: Int]()
    var dic2 = [String: Int]()
    let str1Array = str1.map { String($0).uppercased() }
    let str2Array = str2.map { String($0).uppercased() }
    
    for i in 0..<str1.count-1 {
        let str = str1Array[i...i+1].joined()
        if str.filter { $0.isLetter }.count == 2 {
            dic1[str, default: 0] += 1
        }
    }
    for i in 0..<str2.count-1 {
        let str = str2Array[i...i+1].joined()
        if str.filter { $0.isLetter }.count == 2 {
            dic2[str, default: 0] += 1
        }
    }
    
    var inter = 0
    var union = 0
    
    let allKeys = Set(dic1.keys).union(dic2.keys)
    
    for key in allKeys {
        let count1 = dic1[key, default: 0]
        let count2 = dic2[key, default: 0]
        
        inter += min(count1, count2)
        union += max(count1, count2)
    }
    
    if union == 0 {
        return 65536
    }
    return Int((Double(inter) / Double(union)) * 65536)
}