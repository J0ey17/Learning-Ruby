#!/bin/ruby

def dashatize(num)
 reg=/([13579])/
 temp=num.to_s.gsub(reg,'-\1-').gsub(/--/,'-').chars
 if temp.last == '-' then temp.delete_at(temp.size-1) end
 if temp[0] == '-' then temp.delete_at(0) end
 if temp.join.empty? then return 'nil' else temp.join end
end
