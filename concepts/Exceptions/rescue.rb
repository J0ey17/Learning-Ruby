#!/bin/ruby

def fact(x)
  return 1 if x == 0
  return 1 if x == 1
  x * fact(x-1)
end

begin
  x = fact(ARGV[0].to_i)
  p x
rescue => exc
  p exc.message
end 
