import UIKit
class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var dict = [Int: Int]()
        for number in nums{
            if dict[number] == nil{
                dict[number] = 1
            }else{
                dict[number] = dict[number]! + 1
            }
        }
        var resKey = 0
        var maxCount = 0
        for key in dict.keys{
            print("\(key)------\(dict[key]!)")
            if dict[key]! > maxCount{
                resKey = key
                maxCount = dict[key]!
            }
        }
        return resKey
    }
}
