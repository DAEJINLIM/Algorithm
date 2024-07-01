import Foundation

func solution(_ new_id:String) -> String {
    var id = new_id
    
    id = id.map { $0.isUppercase ? $0.lowercased() : String($0) }.joined()
    id = id.filter { $0.isLetter || $0.isNumber || $0 == "-" || $0 == "_" || $0 == "." }
    
    while id.contains("..") {
        id = id.replacingOccurrences(of: "..", with: ".")
    }
    
    if id.first == "." {
        id.removeFirst()
    }
    if id.last == "." {
        id.removeLast()
    }
    if id.isEmpty {
        id = "a"
    }
    if id.count > 15 {
        id = id.map { String($0) }[0..<15].joined()
        if id.last == "." {
            id.removeLast()
        }
    }
    if id.count < 3 {
        id = id + Array(repeating: id.last!, count: 3-id.count)
    }
    
    return id
}