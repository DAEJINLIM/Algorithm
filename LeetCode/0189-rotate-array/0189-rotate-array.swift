class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        for _ in 0..<k {
            nums.insert(nums.removeLast(), at: 0)
        }
    }
}
