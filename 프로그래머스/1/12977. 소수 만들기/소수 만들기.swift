import Foundation

func solution(_ nums:[Int]) -> Int {
    var answer = 0
    for i in 0..<nums.count {
        for j in (i+1)..<nums.count {
            for k in (j+1)..<nums.count {
                let number = nums[i] + nums[j] + nums[k]
                if number <= 3 {
                    answer += 1
                }
                if number % 2 == 0 || number % 3 == 0 {
                    continue
                }
                var n = true
                for b in 5..<number {
                    if number % b == 0 {
                        n = false
                    }
                }
                if n {
                   answer += 1
                }
            }
        }
    }

    return answer
}