info = Hash.new
cities = []
puts "Enter your first name"
print ">... "
first_name = gets.chomp.capitalize
info["first name"] = first_name
puts "Enter your last name"
print ">... "
last_name = gets.chomp.capitalize
info["last name"] = last_name


puts "Enter your age"
print ">... "
age = gets.chomp.to_i
info[:age] = age

puts "Enter Cities you have visited"
print ">... "
city = gets.chomp.capitalize
while city.downcase != "done"
  puts "Enter Cities you have visited"
  print ">... "
  city = gets.chomp.capitalize
  info["city have visited"] = cities << city
end
info.each do |key, value|
    if value.is_a? Integer
      puts "Your age is #{value}"
    elsif value.is_a? Array
      puts "Your #{key} are #{value.join(",")} "
    else
      puts "Your #{key} is #{value}"
    end
end
