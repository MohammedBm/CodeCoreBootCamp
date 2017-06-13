info = Hash.new

puts "Enter your first name"
print ">... "
first_name = gets.chomp.capitalize
info["first name"] = first_name
puts "Enter your last name"
print ">... "
last_name = gets.chomp.capitalize
info["last name"] = last_name


puts "Enter your city of birst"
print ">... "
city = gets.chomp.capitalize
info["city of birth"] = city


puts "Enter your age"
print ">... "
age = gets.chomp.to_i
info[:age] = age


info.each do |key, value|
  if value.is_a? Integer
    puts "Your age is #{value}"
  else
    puts "Your #{key} is #{value}"
  end
end
