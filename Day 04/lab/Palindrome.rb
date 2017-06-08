puts "input please"
input1 = gets.chomp
puts "input again please"
input2 = gets.chomp
puts "input again please"
input3 = gets.chomp

newArray = [input1, input2, input3]

#result = newArray.permutation.to_a

#result.each do |p|
#  puts p.join('')
#end

puts newArray.permutation.map(&:join)
