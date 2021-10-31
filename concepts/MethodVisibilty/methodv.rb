#!/bin/ruby

class MethodV

  #Public Instance method, can be called by an instance
  def pubIM
    puts "Public Instance Method"
  end

  #Protected Instance method, can be called by methods and object initialized inside the methods
  def proIM
    puts "Protected Instance Method"
  end

  def inproIM
    temp = MethodV.new()
    temp.proIM
  end

  #Private Instance method, can only be called from methods in class
  def priIM
    puts "Private Instance Method"
  end

  def inpriIM
    priIM
  end

  protected :proIM
  private :priIM

  #class methods can only be called by classobject, otherwise the private, protected methods act the same way
  class << MethodV
    def pubCM
      puts "Public Class method"
    end

    def proCM
      puts "Protected Class Method"
    end

    def inproCM
      MethodV.proCM
    end

    def priCM
      puts "Private Class Method"
    end

    def inpriCM
      priCM
    end

    protected :proCM
    private :priCM
  end
end
