#!/bin/ruby

def high (x)
  dic = Array ('a'..'z')
  res = Hash.new()
  x.split(' ').map{|i| res.store(i,i.chars.inject(0){|sum,j| sum+(dic.index(j)+1)})}
  res.key(res.values.max)
end

#testing
puts high('man i need a taxi up to ubud')  #taxi
puts high('what time are we climbing up the volcano') #volcano
