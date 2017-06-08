puts "What is your first name"
print "> "

 # In ruby, variable names by convention are written in snake_case style
first_name = gets.chomp.capitalize


puts "What is your last name"
print "> "

last_name =  gets.chomp.capitalize

puts "Your full name is #{first_name} #{last_name} "
