import Foundation

func solution(_ a:Int, _ b:Int) -> String {
    let a = a < 10 ? "0\(a)" : String(a)
    let b = b < 10 ? "0\(b)" : String(b)
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    let date = dateFormatter.date(from: "2016-\(a)-\(b)")!
    dateFormatter.dateFormat = "E"
    dateFormatter.locale = Locale(identifier: "en_US")
    let dayOfWeek = dateFormatter.string(from: date)
    
    return dayOfWeek.uppercased()
}