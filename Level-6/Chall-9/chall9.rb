#!/bin/ruby

def reverse_alternate(string)
  str.split(' ').each.with_index.map{|i,j| if j.odd? then i.reverse else i end}.join(' ')
end
