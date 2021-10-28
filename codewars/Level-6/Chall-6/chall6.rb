#!/bin/ruby

def meeting(s)
  s.upcase.split(';').map{ |i| i.scan(/\w+/).reverse.join(', ').gsub(/(.+)/,'(\1)')}.sort.join
end
