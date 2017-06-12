puts "Enter the word you want to write if number is divisble by 3 and 5 "
print '> '
both_words = gets.chomp

puts "Enter the word you want to write if number is divisble by 3"
print '> '
first_word = gets.chomp

puts "Enter the word you want to write if number is divisble by 5 "
print '> '
second_word = gets.chomp


puts "Write a number"
print "> "
num1 = gets.chomp.to_i

puts "Write a number"
print "> "
num2 = gets.chomp.to_i

fizz_buzz = []
for i in 1..100 do
  if i % num1 == 0 && i % num2 ==0
    fizz_buzz<< "#{both_words}"
  elsif i % num1 == 0
    fizz_buzz << "#{first_word}"
  elsif i % num2 == 0
    fizz_buzz << "#{second_word}"
  else
    fizz_buzz << i
  end
end
puts fizz_buzz.inspect


# newArr = []
# for i in 1..100 do
#   out = ''
#   out += fizz if i % 3 == 0
#   out += buzz if i % 5 == 0
#   out += i.to_s if out.length == 0
#   newArr << out
#   # newArr.push out
# end
#
# puts newArr.inspect
