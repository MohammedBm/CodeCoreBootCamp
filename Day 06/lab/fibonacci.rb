
puts "Enter a number...."
print "...>"
num = gets.chomp.to_i

fib = []
i=0;

while i <num do

  if i <= 1
    fib.push(1)
    i += 1
  else
    fib.push(fib[-1] +fib[-2])
    i += 1
  end
end

print "#{fib} \n"
