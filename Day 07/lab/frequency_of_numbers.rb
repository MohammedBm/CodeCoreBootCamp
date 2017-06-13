

# puts "Give me a string"
# print ">... "
array = [1,2,3,4,4,4,2,3,3,3]

counts = Hash.new(0)

array.each { |char| counts[char] += 1 }

print counts

most = counts.values.max
puts "#{counts.key(most)} is the most recurring letter with #{most} occurances"



#
# array = [1,2,3,4,4,4,2,3,3,3]
#
# counts = Hash.new(0)
#
# array.each { |char| counts[char] += 1 }
#
# puts counts
