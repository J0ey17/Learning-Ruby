#!/bin/ruby

#Person is the base class or the super class
class Person
  attr :name,:age,:eth

  def initialize(name,age,eth)
    @name=name
    @age=age
    @eth=eth
  end
end

#both earthpeople and Martians are an extension of person class or a subclass of person.
#we are overiding the method we inherited from person in both classes but in EarthPeople, we are calling  super class method initaize in EarthPeople, in Martians we are overiding the initialize method of Person.
class EarthPeople < Person
  def initialize
    super("Mark",24,"Japanese")
  end
end

class Martians < Person
  attr :planet
  def initialize(name,age,planet)
    @name=name
    @age=age
    @planet=planet
  end
end
