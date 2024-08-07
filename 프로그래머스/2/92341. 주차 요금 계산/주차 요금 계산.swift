import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    var dic = [String: String]()
    var cars = [Int: Int]()
    
    func calPay(_ time: Int) -> Int {
        if time > fees[0] {
            return fees[1] + Int(ceil(Double(time - fees[0]) / Double(fees[2]))) * fees[3]
        } else {
            return fees[1]
        }
    }
    
    func calMinute(_ inTime: String, _ outTime: String) -> Int {
        let time1 = inTime.split(separator: ":")
        let time2 = outTime.split(separator: ":")
        return ( (Int(time2[0])! * 60) + Int(time2[1])! ) - ( (Int(time1[0])! * 60) + Int(time1[1])! )
    }
    
    for recode in records {
        let arr = recode.split(separator: " ").map { String($0) }
        if arr.last! == "IN" {
            dic[arr[1]] = arr[0]
        }
        
        if arr.last! == "OUT" {
            cars[Int(arr[1])!, default: 0] += calMinute(dic[arr[1]]!, arr[0])
            dic.removeValue(forKey: arr[1])
        }
    }
    
    if !dic.isEmpty {
        for i in dic {
            cars[Int(i.key)!, default: 0] += calMinute(i.value, "23:59")
        }
    }
    
    return cars.sorted { $0.key < $1.key }.map { calPay($0.value) }
}