# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  max = 0
  (0..s.size).each do |n|
    (n+max..s.size).each do |a|
      word = s[n..a]
      break if word.size != word.chars.uniq.size

      max = word.size if max < word.size
    end
  end
  max
end
