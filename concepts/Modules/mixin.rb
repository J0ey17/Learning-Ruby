#!/bin/ruby

module A
  def methA
    puts "i am from module A"
  end
end

class B
  include A
  def methB
    puts "Yea suck it we are from class B now"
  end
end

