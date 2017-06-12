# Write an array that contains three strings and three numbers

arr = ['First string', 1, 'Second string', 2, 'Third String', 3]

# Accessing values in a ruby can be done with #[] notation
arr[0] # returns 'First string'
arr[3] # returns 2
# Putting a negative number inside [] will return values beginning
# from the end of the array instead
arr[-1] # returns 3
arr[-2] # returns third string


#Multi dimensional arrays
## an array whos elements are all arrays is multi-dimensional array
#it can be used represent a table or a matrix
a = [[1,2,3],[4,5,6],[7,8,9,10]]

# You can access array elemetns of nested arrays by chanining
#the bracket notation
a[1] #returns [4,5,6]
a[0][1] #returns 2
a[-1][-1] #[10]

# The bracket notation when combined with = can be used to
#assign a values
a[1][-1] = 16 #it replace the value of 6 in the nested array with 16
a[-1] = [20,30] # replaces the last arrray with [20,30]


#To add values at the end of an array use the << (shovel operator) or
#.push method. They function identically, return the array and mutata it
# as well

b << 'Earth' << 'Alpha Centauri'
#return ['Sun' , ' Moon','Eeatth','Alpha Centauri']
b.push('Earth').push('Alpha Centauri') #Same as the above
#<< and push can be chanied one after the another

#Use the method .include? to check if an array contains a values
b.include? 'Earth' #returns true
b.include? 20 #returns false

# Find out how to get the number of Array elements in two different ways
b.count
b.size
b.length

# Find a method to turn a multi-dimensional array into a one-dimensional array
a.flatten
#a.flatten! #mutates a


# Find out how to add and remove elements from the end of arrays and from
# beginnings of arrays
a.shift #will remove from the front of the array
a.unsift(1) #will add an element to the front of the array
a.pop #will remove an element from the end of the array
a.push(10) #will ad 10 to the end of the array


# Find out how to convert a string sentence to an array of words
"Hello CodeCore Students".split #will turn the string into ["Hello","CodeCore","Students"]
# Find out how to convert an array of words to a sentence
['2','12','23',3123].join #this will join the elemtns to one string






#iterating through arrays

my_array = [1,2,3,4,5]
#you can use the each method to iterate over arrays
#it takes a block defined with do ..end
#the value of each elemnt will be available as the variable
#put insed the bar charachter (i.e. |varible_name|)

my_array.each do |value|
  puts value * 2
end


array = [2,4,6,8,10]

array.each do |num|
  puts num * num
end



first_array = [[1,2,3],[4,5,6]]
first_array.flatten!

first_array.each do |num|
  puts num * num
end
