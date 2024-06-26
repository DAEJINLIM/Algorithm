import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    
    if lottos.sorted() == win_nums.sorted() {
        return [1,1]
    }
    
    if lottos.filter({ $0 == 0 }).count == 6 {
        return [1,6]
    }
    
    let zeroCount = lottos.filter{ $0 == 0 }.count
    let matchCount = lottos.filter { win_nums.contains($0) }.count
    
    return [rankingCal(zeroCount + matchCount), rankingCal(matchCount)]
}

func rankingCal(_ match: Int) -> Int {
    switch match {
    case 6:
        return 1
    case 5:
        return 2
    case 4:
        return 3
    case 3:
        return 4
    case 2:
        return 5
    default:
        return 6
    }
}