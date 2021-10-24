#!/bin/ruby

require 'prime'

def isPP(n)
  prime = Array.new()
  prime = n.prime_division.map{ |i| i[1] }
  gcd = n.prime_division.map{ |i| i[1] }.reduce{|acc,j| acc.gcd(j)}
  res=[n.prime_division.inject(1){ |mul,i| mul*i[0]**(i[1]/gcd)},gcd]
  if gcd > 1
    print "#{res}\n"
  else
    puts nil
  end
end

isPP(4)# [2,2]
isPP(8)# [2,3]
isPP(36)# [6,2]
isPP(9)# [3, 2]
