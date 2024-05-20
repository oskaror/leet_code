# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  nums.size.next.times.sum - nums.sum
end
