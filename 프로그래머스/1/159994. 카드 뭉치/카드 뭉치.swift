import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var goal = goal
    var cards1 = cards1
    var cards2 = cards2
    
    for i in goal {
        if i == cards1[0] {
            goal.removeFirst()
            cards1.removeFirst()
            if cards1.isEmpty {
                cards1 = [""]
            }
        } else if i == cards2[0] {
            goal.removeFirst()
            cards2.removeFirst()
            if cards2.isEmpty {
                cards2 = [""]
            }
        }
    }
    
    return goal.isEmpty ? "Yes" : "No"
}