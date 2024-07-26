import Foundation

func solution(_ k: Int, _ dungeons: [[Int]]) -> Int {
    var enter = 0
    
    for perm in permutation(dungeons) {
        var hp = k
        var count = 0
        for dungeon in perm {
            if dungeon[0] <= hp {
                hp -= dungeon[1]
                count += 1
            } else {
                break
            }
        }
        enter = max(enter, count)
    }

    return enter
}

func permutation<T>(_ nums: [T]) -> [[T]] {
    var result = [[T]]()
    var nums = nums

    func backtrack(_ start: Int) {
        if start == nums.count {
            result.append(nums)
            return
        }
        for i in start..<nums.count {
            nums.swapAt(start, i)
            backtrack(start + 1)
            nums.swapAt(start, i)
        }
    }

    backtrack(0)
    return result
}