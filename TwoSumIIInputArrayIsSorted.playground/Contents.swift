class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var res = [0,0]
        for i in 0..<numbers.count - 1{
            if target > 0, numbers[i] > target{
                break
            }
            for j in (i+1)..<numbers.count{
                if target > 0, numbers[j] > target{
                    break
                }
                if numbers[i] + numbers[j] == target{
                    res[0] = i + 1
                    res[1] = j + 1
                    return res
                }
            }
        }
        return res
    }
}
