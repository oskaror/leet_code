# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  sum = (convert_to_number(l1) + convert_to_number(l2)).to_s.split("")

  current = ListNode.new(sum.pop.to_i)
  head = current

  sum.reverse_each do |n|
    current.next = ListNode.new(n.to_i)
    current = current.next
  end
  head
end

def convert_to_number(list)
  number = ''
  loop do
    number << list.val.to_s
    break if list.next.nil?

    list = list.next
  end
  number.reverse.to_i
end
