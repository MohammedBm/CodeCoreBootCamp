# puts "Enter an array of hashes"
# print ">... "





def pluck (array, key)
  result = []

  array.each do|value|
    if value.has_key?(key)
      result << value[key]
    else
      result << nil
    end
  end
  result  
end


print "#{pluck([{b:2}, {a:4, b:4}, {a:1}, {c:4}], :a)} \n"
print "#{pluck([{b:2}, {a:4, b:4}, {a:1}, {c:4}], :b)}\n"
