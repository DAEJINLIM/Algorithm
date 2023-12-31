import Foundation

func change(_ word: String) -> String? {
    switch word {
    case "zero":
        return "0"
    case "one":
        return "1"
    case "two":
        return "2"
    case "three":
        return "3"
    case "four":
        return "4"
    case "five":
        return "5"
    case "six":
        return "6"
    case "seven":
        return "7"
    case "eight":
        return "8"
    case "nine":
        return "9"
    default:
        return nil
    }
}

func solution(_ s:String) -> Int {
    var s = s
    var a = ""
    var temp = ""
    for i in s {
        if Int(String(i)) != nil {
            a += String(i)
        } else {
            temp += String(i)
            if change(temp) != nil {
                a += change(temp)! 
                temp = ""
            }
        }
    }
    
    return Int(a)!
}
