
string = "abcd"

array_of_string = string.split("")
result = []

array_of_string.each_with_index do |i,index|
  if (index <= array_of_string.length - 2)
    r = i +array_of_string[index+1]
    result.push(r)
  end
end

print "#{result} \n"
