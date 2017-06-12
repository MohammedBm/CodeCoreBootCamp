words = []
i = 1

loop do
  puts "Enter a word.."
  print "...> "
  word_user = gets.chomp.downcase

  if word_user == "exit"
    break
  else
    words.push("#{i}: #{word_user.capitalize}")
    i += 1
  end
end

puts "You've entered #{words.count}"
puts words
