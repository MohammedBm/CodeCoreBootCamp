print "Give me a number "
input = gets.chomp.to_i


if input < 100
  #print to 100
  for number in input..100
    puts number
  end
else
  #print to down to 100
  while input >= 100
    puts input
    input -= 1
  end
end
