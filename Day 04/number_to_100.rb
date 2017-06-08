puts "Write a number"
print "> "

num = gets.chomp.to_i

for i in 1 ..100 do
  if num =< 100
    print "#{num} "
    num += 1
  end
end
