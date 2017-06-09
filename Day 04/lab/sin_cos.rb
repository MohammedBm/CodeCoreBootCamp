puts "Enter the number you want to turn into sin"
print "> "
to_sin = gets.chomp.to_i
puts "Enter the number you want to turn into cosine"
print "> "
to_cosine = gets.chomp.to_i


puts "#{to_sin} = #{Math.sin(to_sin)}"
puts "#{to_cosine} = #{Math.cos(to_cosine)}"
