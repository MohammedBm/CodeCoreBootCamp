
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

number_length = last_row[last_row.length / 2].to_s.length
triangle_length = last_row.length * number_length + last_row.length - 1
triangle.each do |row|
  final_row = []
  row.each do | number|
    final_row.push(number.to_s.center(number_length))
  end
  puts final_row.join(' ').center(triangle_length)
end 
