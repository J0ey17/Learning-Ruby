#!/bin/ruby

module MyMath
  PI=3.14
  E=2.71

  def MyMath.add
    PI+E
  end

  class << MyMath
    def exp(x)
      E**x
    end
  end
end
