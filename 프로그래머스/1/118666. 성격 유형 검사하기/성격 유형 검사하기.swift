import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    let count = [3,2,1,0,1,2,3]
    var types = ["R" : 0, "T" : 0, "C" : 0, "F" : 0, "J" : 0, "M" : 0, "A" : 0, "N" : 0]
    var result = ""
    
    for i in survey.indices {
        if choices[i] > 4 {
            types[String(survey[i].last!)]! += count[choices[i]-1]
        } else if choices[i] < 4 {
            types[String(survey[i].first!)]! += count[choices[i]-1]
        }
    }
    
    result.append(types["R"] == types["T"] ? "R" : types["R"]! > types["T"]! ? "R" : "T")
    result.append(types["C"] == types["F"] ? "C" : types["C"]! > types["F"]! ? "C" : "F")
    result.append(types["J"] == types["M"] ? "J" : types["J"]! > types["M"]! ? "J" : "M")
    result.append(types["A"] == types["N"] ? "A" : types["A"]! > types["N"]! ? "A" : "N")
    
    return result
}