import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    var result = [Character]()
    var alphabet = (97...122).map { Character(Unicode.Scalar($0)!) }
    for i in skip {
        alphabet.removeAll { $0 == i }
    }
    for cha in s {
        var i = alphabet.firstIndex(of: cha)! + index
        if i >= alphabet.count {
            i = i % alphabet.count
        }
        result.append(alphabet[i])
    }
    return String(result)
}