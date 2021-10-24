#!/bin/ruby

def highest_rank(arr)
  puts arr.group_by{|i| i}.max_by{|k,v| [v.size,k]}[0]
end

highest_rank([12, 10, 8, 12, 7, 6, 4, 10, 12])
highest_rank([12, 10, 8, 12, 7, 6, 4, 10, 12, 10])
highest_rank([12, 10, 8, 8, 3, 3, 3, 3, 2, 4, 10, 12, 10])
