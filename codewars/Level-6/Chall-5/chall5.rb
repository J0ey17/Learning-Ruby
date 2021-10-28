#!/bin/ruby

def highest_rank(arr)
    puts arr.sort.reverse.max_by{|i| arr.count(i)}
end

highest_rank([12, 10, 8, 12, 7, 6, 4, 10, 12])            # 12
highest_rank([12, 10, 8, 12, 7, 6, 4, 10, 12, 10])        # 12
highest_rank([12, 10, 8, 8, 3, 3, 3, 3, 2, 4, 10, 12, 10])# 3
