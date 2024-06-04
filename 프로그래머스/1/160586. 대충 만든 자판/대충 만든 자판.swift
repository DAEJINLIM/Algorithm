import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var result = [Int]()
    for target in targets {
        var total = [Int]()
        var count = 0
        
        for char in target {
            
            var counts = [Int]()
            
            for key in keymap {
                
                if let index = key.firstIndex(of: char) {
                    let distance = key.distance(from: key.startIndex, to: index)
                    counts.append(distance + 1)
                }
                
            }
            
            if counts.min() == 0 || counts.isEmpty {
                total = [-1]
                break
            } else {
                count = counts.min()!
            }
            
            total.append(count)
        }
        
        result.append(total.reduce(0, +))
    }
    return result
}