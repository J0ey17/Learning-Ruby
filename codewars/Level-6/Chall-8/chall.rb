#!/bin/ruby

def isEureka(i)
  i.to_s.chars.each.with_index.inject(0) { |sum,(i,j)| sum+i.to_i**(j+1) }
end

def sum_dig_pow(a, b)
  (a..b).select{ |i| isEureka(i) == i }.sort
end
