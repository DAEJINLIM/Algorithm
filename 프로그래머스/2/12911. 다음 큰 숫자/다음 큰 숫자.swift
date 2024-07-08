import Foundation

func solution(_ n:Int) -> Int
{
    let oneCount = String(n, radix: 2).filter { $0 == "1" }.count
    var result = n + 1
    
    while oneCount != String(result, radix: 2).filter { $0 == "1" }.count {
        result += 1
    }
    
    return result
}