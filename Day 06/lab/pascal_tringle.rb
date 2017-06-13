
puts "enter an integer..."
print "> "
rows  = gets.chomp.to_i
i = 0
x = 0
y = 0
triangle = []

# Create the values for the first two rows
if rows >= 1
  triangle.push([1])
end
if rows >= 2
  triangle.push([1,1])
end
last_row = [1,1]

# create the values for all subsequent rows
count = 3 # row = 8
while count <= rows
  next_row = [1]
  i = 0
  while i <last_row.length - 1
    next_row.push(last_row[i] + last_row[i + 1])
    i += 1
  end
  next_row.push(1)
  triangle.push(next_row)
  last_row = next_row
  count = count +1
end

print "#{triangle}"
