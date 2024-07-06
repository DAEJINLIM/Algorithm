import Foundation

func solution(_ s:String) -> String {
    var shift = [true, true]
    var words = ""
    
    for i in s.lowercased() {
        if i == " " {
            shift[0] = true
        }
        if shift[0] && i.isLetter || i.isNumber{
            shift[1] = true
        }
        
        if shift[0] && shift[1] {
            words.append(i.uppercased())
            shift = [false, false]
        } else {
            words.append(i)
        }
    }
    
    return words
}