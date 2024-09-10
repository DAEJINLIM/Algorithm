import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    var result = ""
    for (i, c) in cipher.enumerated() {
        if (i + 1) % code == 0 { result.append(c) }
    }
    return result
}
