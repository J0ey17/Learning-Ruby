#!/bin/ruby

def fact(n)
  return 1 if n==0
  return 1 if n==1
  n * fact(n-1)
end

begin
  a = 10
  puts a
  raise(ArgumentError,"Please Enter an Integer bitch") if !a.is_a?Integer
  puts fact(a)
end
