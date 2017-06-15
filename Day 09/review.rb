#Day 09


#functions - block of code we might want to reacll
def say_hello
  puts "Hi"
end

say_hello


def say_hello(greeting)
  puts "#{greeting}"
end

say_hello("Hola")

#function(){
# return
# }

def mult(x,y)
  return x * y
end

def multi(x,y )
  x*y
end

#methods - a function inside a classes



#Classes

#an instance of the array class
list_of_students = Array.new
frequencies = Hash.new

#blueprint
#cookie cutter

class Cookie

  #constructor method
  def intialize(sugar)
    @sugar = sugar
    @flour = 20

  end

  #method
  def eat
    puts "Crunch! #{@sugar}"
    puts "Crunch!"
  end
end



cookie = Cookie.new(10) #inside this cookie object there is an instance ->
#variable that is unique to this particular cookie. this value can only be accessed inside the object.
cookie2 = Cookie.new(20)
cookie3 = Cookie.new(30)
cookie.@sugar #i do not have access

#inheritance
#super
#arrt_accessors: greeting $ setters
#private and public - accessibilty of methods
#@ - > instance variables
#$ -> global variables
#@@ -> class variables


#What is the difference between a helper methods and a class

#name space
#libaries of mothods, helper methods


module Computer
  class Apple
  end
end


module Fruit
  class Apple
  end
end



mac = Computer::Apple.new



honey_crisp= Fruit::Apple.new


#library of methods that can be imported to a class
module helper_methods
  class Apple
  end


  def name_display
  end
end


class Student
  include helper_methods
end


#load vs require
# require loads every time
# load will check to if it is loaded, if not, it will load
require './cookie'
load './cookie'



#class methods
#class variables

#methods and variables that DO NOT BELONG to the instance

# obj    class
cookie = Cookie.new

# @sugar belongs to the cookie (i end up with 4 different instance variables)
# @@color belongs to the Cooke Class (i end up with 1 class varible alaways)
