#!/bin/ruby

def int_add(x,y)
  raise TypeError if !(x.is_a?Integer)
  raise TypeError if !(y.is_a?Integer)
  return x+y
end

begin
  x,y=ARGV[0].to_i,ARGV[1].to_i
  puts int_add(x,y)
end
