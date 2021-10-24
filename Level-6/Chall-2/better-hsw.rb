#!/bin/ruby

def high (x)
  dic = Array ('a'..'z')
  puts x.split(' ').max_by{|i| i.chars.inject(0){|sum,j| sum+(dic.index(j)+1)}}
end

#testing
high('man i need a taxi up to ubud')  #taxi
high('what time are we climbing up the volcano') #volcano
