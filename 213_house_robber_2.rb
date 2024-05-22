# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  return nums[0] if nums.size == 1

  [nums[1..], nums[0..-2]].map { |array| find_max(array) }.max
end

def find_max(array)
  a, b = 0, 0
  array.each do |num|
    temp = [num + a, b].max
    a = b
    b = temp
  end
  b
end