#!/bin/ruby

def solve(s)
  reg=/[^aeiou]+/
  scr = Array ('a'..'z')
  s.scan(reg).map {|i| [i.chars.inject(0){|sum,i| sum+scr.index(i)+1},i]}.max[0]
end
