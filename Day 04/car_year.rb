
puts 'Enter the year of you car'
print '> '

year = gets.chomp.to_i

if year > 2017
  puts ' Your car is from the futre'
elsif year > 2012
  puts 'Your car is new'
elsif year > 2007
  puts 'You car is old'
elsif year < 2005
  puts "Your car is very old"
end
