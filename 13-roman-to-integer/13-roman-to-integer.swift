class Solution {
    func romanToInt(_ s: String) -> Int {
        var result = 0
        var prev = 0

        let romanToInt = ["M": 1000, "D": 500, "C": 100, "L": 50, "X": 10, "V": 5, "I": 1]

        let arr = s.map { c in
            String(c)
        }

        var i = s.count - 1
        while (i >= 0) {
            if let current = romanToInt[arr[i]] {
                if prev > 0 && prev > current {
                    result -= current
                } else {
                    result += current
                }

                prev = current
            }
            i -= 1
        }
        
        return result
    }
}