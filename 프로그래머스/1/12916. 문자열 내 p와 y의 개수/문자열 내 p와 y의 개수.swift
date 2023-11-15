import Foundation

func solution(_ s:String) -> Bool
{
    return s.filter { $0.lowercased() == "p" }.count == s.filter { $0.lowercased() == "y" }.count ? true : false
}
