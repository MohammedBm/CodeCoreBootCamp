puts "How many angles in a square?"
puts "1. Three angles"
puts "2. Four angles"
puts "3. Six angles"
print "Enter the correct number > "


total = 0;

ans1 = gets.chomp.to_i

if ans1 == 2
  total += 1
end
puts "total is #{total}"


puts "What is the shape of the earth?"
puts "1. Circle"
puts "2. Square"
puts "3. Hexagone"
print "Enter the correct number > "


ans2 = gets.chomp.to_i

if ans2 == 1
  total+= 1
end
puts "total is #{total}"


puts "In what language is this quizz written?"
puts "1. Javascript"
puts "2. Python"
puts "3. Ruby"
print "Enter the correct number > "
ans3 = gets.chomp.to_i

if ans3 == 3
  total+=1
end
puts "total is #{total}"



totalValue = total.to_f
prcentage = totalValue/3*100
puts "You scored #{prcentage.to_i}%,  You got #{total.to_i} out of 3 questions correctly"
