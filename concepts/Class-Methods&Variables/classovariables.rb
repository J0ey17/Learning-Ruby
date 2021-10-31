class ClassVar
  #@@ for class variable
  #class variable is shared accross all class objects, objects/instances, class methods, instance methods
  @@a=1000

  #getter and setter for instance var a
  attr_accessor :a
  
  #getter and setter for class var a
  def class_a
    @@a
  end
  def class_a=(value)
    @@a=value
  end

end
