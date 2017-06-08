# puts "Write a number"
# print "> "
# num1 = gets.chomp.to_i
#
# puts "Write a number"
# print "> "
# num2 = gets.chomp.to_i
#
#
# for i in 1..100 do
#   if i % num1 == 0 && i % num2 ==0
#     puts "FizzBuzz"
#   elsif i % num1 == 0
#     puts "Fizz"
#   elsif i % num2 == 0
#     puts "buzz"
#   else
#     puts "#{i}"
#   end
# end
#

# for i in 1..100 do
#   if i % 5 == 0 && i % 3 == 0
#     puts "FIZZBUZZ"
#   elsif i % 5 == 0
#     puts "Fizz"
#   elsif i % 3 == 0
#     puts "Buzz"
#   else
#     puts "#{i}"
#   end
# end

for i in 1..100 do
  out = ''
  out += 'Fizz' if i % 3 == 0
  out += 'Buzz' if i % 5 == 0
  out += i.to_s if out.length ==0
  puts out
end
