# puts "Give me numbers"
# print ">... "
#
#
# string_num = gets.chomp
num = [1,2,3,4,5,6,7,8,9,10,11,12,13,22,15,16,17,18,19,20,21,22,23]
counts = Hash.new(0)

num.each { |char| counts[char] += 1 }


most = counts.values.max
puts "#{counts.key(most)} appeared twice"
