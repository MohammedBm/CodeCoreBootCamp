character = "O"
puts "How many rows of #{character}'s do you want?"
print "> "
row_count = gets.chomp.to_i

character_count = 1 #this is the number of characters at the top of the triangle
height = 200 #how tall the pyramid is

row_count.times do
    puts (character * character_count).center(height)
    character_count += 3
end

#
# print "Give me a nubmer"
# user_input = gets.chomp.to_i
# puts "\n"
# while user_input > 0
#     indent = ' ' + (user_input  - 1)
#     layers ||=1
#     points = '0'*layers
#
#     puts "#{indent}#{points}"
#     layers += 1
#     user_input -= 1
#   end
# end
