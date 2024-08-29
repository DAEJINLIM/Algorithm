import Foundation

func solution(_ record:[String]) -> [String] {
    var dic = [String:String]()
    var result = [String]()
    
    for i in record {
        let r = i.split(separator: " ").map { String($0) }
        if r[0] != "Leave" {
            dic[r[1]] = r[2]
        }
    }
    
    for i in record {
        let r = i.split(separator: " ").map { String($0) }
        if r[0] == "Enter" {
         result.append("\(dic[r[1]]!)님이 들어왔습니다.")
        } else if r[0] == "Leave" {
         result.append("\(dic[r[1]]!)님이 나갔습니다.")
        }
    }
    
    return result
}