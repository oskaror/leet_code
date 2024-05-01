# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  res = []
  nums = nums.to_enum

  prefix = 1
  nums.each do |n|
    res << prefix
    prefix *= n
  end

  postfix = 1
  nums.with_index.reverse_each do |n, i|
    res[i] *= postfix
    postfix *= n
  end

  res
end