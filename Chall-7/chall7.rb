#!/bin/ruby

def find_it(seq)
    seq.select {|i| seq.count(i).odd?}[0]
end

