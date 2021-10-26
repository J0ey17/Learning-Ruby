#!/bin/ruby

def productFib(prod)
    a, b = [0, 1]
    while prod > a * b
      a, b = [b, a + b]
    end
    p [a, b, prod == a * b]
end

productFib(4895)
productFib(5895)
