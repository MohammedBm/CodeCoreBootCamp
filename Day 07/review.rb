# # Good morning;
#
# # enviroment + git
# # javascript
# # html & css
# # ruby
#
#
# # In rubby you dont need anything like
# #let
# #var
# # const
# # int
#
# # to make a varible in ruby you only need the name of varible and the value
# name = "Mohammed"
# age = 21
#
#
# #if..elsif..else
# ##javascript
# # let sell_price = 400
# # let current_price = 390
# # if (current_price >= sell_price){   ====> This's on javascript
# #  console.log("SELL NOW!")     ==>to input the result on javascript
# # } else if{
# # alert("Don't sell yet")
# # }else{
# # document.write("this will never hit")
# #}                                 ==> on ruby there is no need for bracket
#
#
#
# #ruby
# sell_price = 400
# current_price = 395
#
# if current_price >= sell_price
#   #a new line character will be added to the end "\n"
#   puts "SELL NOW!!"
# elsif current_price < sell_price
#   #there is no new line character at the end
#   print "Don't Sell YET!!"
# else #default
#   #show more of the data type
#   p "THIS WILL NEVER HIT."
# end
#
#
# #getting user input
# # prompt("What price would you like to see you stock at..:")
# print "What price would you like to seel your stock at: "
# sell_price = gets.chomp.to_i
# puts "You have set your sell price at $#{sell_price} CAD"
#
# Loops
#
# puts 1
# puts 2
# puts 3
# puts 4
# puts 5
# puts 6
# puts 7
# puts 8
# puts 9
# puts 10
# puts 11
# puts 12
# puts 13
#
# counter = 1
# while counter <= 10 do
#   puts counter
#   counter = counter + 1
# end
#
#
# for (counter = 0 ; counter <= 10; counter += 1 )
#   puts coutner
# end
#
# # good morning 19's :)
#
# # environment + git
# # javascript
# # html & css
# # ruby
#
# # comment
# # let
# # var
# # const
# # int
# # make a variable
# name = "Jacob"
# # age = 38
# #
# # # if .. elsif .. else .. end
# #
# # # snake_case as the convention for variable declarations
# # sell_price = 400
# # current_price = 400
# #
# # if current_price > sell_price
# #   # a new line character will be added to the end "\n"
# #   puts "SELL NOW"
# # elsif current_price < sell_price
# #   # there is no new line character at the end
# #   print "DON'T SELL YET!"
# # else # default\
# #   # show more of the data type
# #   p "THIS WILL NEVER HIT."
# # end
#
# # getting user input
# # let sellPrice = prompt("What price would you like to sell your stock at: ");
# print "What price would you like to sell your stock at: "
# sell_price = gets.chomp
# p sell_price
# puts "You have set your sell price at $#{sell_price} CAD"
#
# # loops
# puts 1
# puts 2
# puts 3
# puts 4
# puts 5
# puts 6
# puts 7
# puts 8
# puts 9
# puts 10
#
# counter = 0
#
# while counter < 10 do
#   puts counter
#   counter = counter + 1
# end
#
# for (counter = 0; counter < 10; counter+=1)
#   puts counter
# end
#
# # arrays - ordered index list
# # student list
# # days of the week
# # time calendar
# # years, days months
# # shopping list
# # packing list
# # todo list
# # countdown
#
# school = "CodeCore"
# num_of_students = 14
#
# # list_of_students = Array.new
# list_of_students = [
#                       "Roy",
#                       "Jackie",
#                       "Sid"
#                     ]
#
# # p list_of_students
#
# [
#   0: "Roy",
#   1: "Jackie",
#   2: "Sid"
# ]
#
# list_of_students[0] # "Roy"
# list_of_students[2] # "Sid"
# list_of_students.length # 3
# list_of_students.size # 3
# list_of_students.count # 3
#
# # GAMES
# # tictactoe = [nil, nil, nil, nil, nil, nil, nil, nil, nil]
# row1 = [nil, nil, nil]
# row2 = [nil, nil, nil]
# row3 = [nil, nil, nil]
#
# tictactoe = [row1, row2, row3]
#
# tictactoe = [
#   [nil, nil, nil],
#   [nil, nil, nil],
#   [nil, nil, nil]
# ]
#
# list_of_students[1] # grab the second student on the list_of_students
#
# tictactoe[1] # grabs the entire second row, which is an array
# tictactoe[1][1] # grabs the middle square, or the second column, in the second row
#
# # looping & arrays
# list_of_students.each do |student|
#   puts student
# end
#
# tictactoe.each do |row|
#   row.each do |column|
#     # tictactoe[row][column]
#     puts column
#   end
# end
#
# hashes
#
# contact list
# name: phone number
# nutrition facts for a food item at a resto
# food item
#    fat: value
#    carbs: value
#    calories: value
#
# dictionary
# pulp - piece of wood soaked in water
# fiction - false piece of literature
# ficiton: false piece of literature
#
#
# zip CodeCore
# 902210: Beverly Hills
# [] = arrays
# {} = hash

#mhoammed = hash.new
# mohammed = {
#   age: 21,
#   height: 176,
#   hobbies: ["Reading","gaming","running"]
# }
#
#
# #hose do we step through a Hash
# mohammed.each do |key, value|
#   #if the value is an array, please print out all the value in the array
#   #if the value is not, just print out the single value
#   if value.is_a? Array
#     value.each do |hobby|
#       puts "My hobby is #{hobby}"
#     end
# else
#   puts "My #{key} is #{value}"
# end
# end
#
#
# to_s # turn Something into a string
# to_sym #turn Something into a symbol
#
# key = 'age';
# key_symbol = key.to_sym
# key = key_symbol.to_s
#
#
# #we can specify a default our hash by doing the following
# jacob = Hash.new(0)
# #or
# jacob.default = 0
#
#
#
# # "This is the way, step inside."
#

# which character occurs the most in the sentence
sentence = "dasdsdsdsdsdddddddsssssssssssss"
# turn this sentence into a word array
words = sentence.split
# turn this sentence into a character array
characters = sentence.gsub(" ","").split""



#turn the character array into a hash
#["T","h","i","s"]



frequencies = Hash.new(0)
characters.each do |char|
  # frequencies[char] +=1
  frequencies[char.to_sym] +=1
end

p frequencies
