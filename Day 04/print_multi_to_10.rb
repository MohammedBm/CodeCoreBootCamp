puts "Give me a numberrr"
print "> "
num = gets.chomp.to_f

i = 1
loop  do
  puts "#{num} * #{i} = #{i * num}"
  i += 1;
  break if i == 11
end
