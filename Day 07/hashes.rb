# # # #methods - a way to do Something\
# # # #takes in an input and produces an output
# # #
# # # #method - is a function whthin a class
# # #
# # # #functions, methods, calsses, obejcts
# # # add 2 number togethere
# # # math function
# # #
# # # #For adding method to an array
# # # #push is amethod within array class
# # #
# # # #class? what are you talking about when you say class?
# # # #class? template for an objects
# # # #class descirbes an object
# # # #blueprint
# # #
# # #
# # #
# # # Array.new # constructing a house, constructing an array
# # #
# # # #house is an object
# # # list_of_students is na array object
# # # list_of_students is an instance of the array class
# # # list_of_students.push is calling an array method
# # #
# # # #function on javascript
# # #
# # # function sayHello(){
# # #   #block of code
# # # }
# #
# #
# #
# # #definition ruby
# # def say_hello
# #   #block of code
# #   puts "Ciao"
# # end
# #
# #
# # def morning
# #   puts  "get up"
# #   puts  "brush twwth"
# #   puts  "change"
# #   puts  "eat breakfast"
# #   puts  "catch bus"
# # end
# #
# #
# # def add (x,y)
# #   puts x * y
# # end
# #
# # add(1,3)
# # add(1,23)
# # add(12,2)
# # add(12,32)
# # add(12,3)
# #
# #
# #
# # def say_hello(greeting)
# #   puts greeting
# # end
# #
# #
# # say_hello("ciao")
# # say_hello("hello")
# # say_hello("bonjour")
# #
# #
# # def subtract(x,y)
# #   return x - y
# # end
# # # reutrn > puts when writing inside a function or #DEF or write nothing inside
# #
# # def subtract(x,y)
# #    x - y
# # end
# #
# # result = subtract(10,2)
# # result1 = subtract(8,4)
# #
# #
# # subtract(10,2) - subtract(8,4)
# #
# # subtract(subtract(10,2), subtract(8,4)) #recursion
# #
# #
# #
# # def by_five?(num)
# #   return num % 5 == 0
# # end
# #
# # puts by_five?(11)
# # puts by_five?(5)
# #
#
# def multiply(*a)
#   result = 1
#   a.each do |num|
#     result = result *num
#   end
#   result
# end
# total = multiply(1,2,3,4,5,6,7,8,9)
# p total

#
#
#
#
# #create a function that takes a variable number of argemnts
# #the function will return th largest number from the argumnts
#
#
#
# def largest(*numbers)
#   largest = numbers[0]
#
#   numbers.each do |num|
#     if num > largest
#       largest = num
#     end
#   end
#     puts largest
# end
#
#
# def largest (*numbers)
#   puts numbers.max
# end
# largest(2,3,4,232,6)
