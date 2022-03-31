class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var num = n
        var result = 0
        for i in 0..<32 {
            if num & 1 == 1 {
                result += 1
            }
            num >>= 1
        }
        return result
    }
}