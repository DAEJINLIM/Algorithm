import Foundation

func solution(_ s:String) -> String {
    var words = s.components(separatedBy: " ")
    
    for (index, word) in words.enumerated() {
        var new = ""
        for (i, c) in word.enumerated() {
            if i.isMultiple(of: 2) {
                new += c.uppercased()
            } else {
                new += c.lowercased()
            }
        }
        words[index] = new
    }
    return words.joined(separator: " ")
}