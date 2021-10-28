class Point
  #getter setter for instance var a and b
  attr_accessor :a,:b

  #initialize vars
  def initialize(a,b)
    @a=a;
    @b=b;
  end

  #redefining operator method
  def +(other)
    Point.new(@a + other.a, @b + other.b)
  end

end
