# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  checked_nums = {}
  nums.size.times.each do |i|
    complement = target - nums[i]
    return [i, checked_nums[complement]] if checked_nums.key?(complement)

    checked_nums[nums[i]] = i
  end
end
