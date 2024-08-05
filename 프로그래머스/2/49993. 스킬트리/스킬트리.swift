import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    var count = 0
    
    for i in skill_trees {
        var skill = skill.map { String($0) }
        var tree = i.map { String($0) }
        
        for target in tree {
            if skill.contains(target) {
                if target == skill.first {
                    skill.removeFirst()
                    if skill.isEmpty {
                        count += 1
                        break
                    }
                } else {
                    break
                }
            }
            if target == tree.last! {
                count += 1
            }
        }
    }
    
    return count
}