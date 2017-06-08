puts "Enter a number or a letter"
input1 = gets.chomp
puts "Enter a number or a letter"
input2 = gets.chomp
puts "Enter a number or a letter"
input3 = gets.chomp

a = [input1, input2 , input3]

print a.permutation.to_a
