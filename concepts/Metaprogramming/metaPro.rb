class MetaPro
  attr_accessor :a,:b #attr_accessor defines getter and setter for instance var a and b
  attr_reader :c      #att_reader defines getter for inst var c
  attr :d             #attr defines getter for inst var d
  attr :e,true        #attr :e,true defines both getter and setter for inst var e
  def initialize(c,d)
    @c=c
    @d=d
  end
end
