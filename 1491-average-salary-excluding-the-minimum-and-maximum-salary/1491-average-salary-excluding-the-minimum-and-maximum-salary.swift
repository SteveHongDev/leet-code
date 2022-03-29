class Solution {
    func average(_ salary: [Int]) -> Double {
        var sum = 0
        var maximum = salary[0]
        var minimum = salary[0]
        for item in salary {
            if item > maximum {
                maximum = item
            }
            
            if item < minimum {
                minimum = item
            }
            sum += item
        }
        
        sum -= maximum + minimum
        
        return Double(sum) / Double(salary.count - 2)
    }
}