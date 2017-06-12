my_array = [1,4,5,23,14,"Hell othere", false, nil]

result= []

my_array.each do |value|
  if value.is_a?(Integer)
    if value > 10
    result.push(value)
  end
end
end
print "#{result} \n"
