class Solution {
    func countOdds(_ low: Int, _ high: Int) -> Int {
        var result = 0
        
        for i in low...high {
            if i % 2 == 0 {
                continue
            } else {
                result += 1
            }
        }
        
        return result
    }
}