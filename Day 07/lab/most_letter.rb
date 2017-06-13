

puts "Give me a string"
print ">... "
characters = gets.chomp.gsub(' ','').split("")
counts = Hash.new(0)

characters.each { |char| counts[char] += 1 }

print "#{counts.max_by {|letter,number| letter}}"

most = counts.values.max
puts "#{counts.key(most)} is the most recurring letter with #{most} occurances"
