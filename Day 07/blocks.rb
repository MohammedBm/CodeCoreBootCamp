# what are blocks? - a piece of code or method without a name.
# numbers.each do
#   puts "nothing"
# end
#
# def method_name
#   # block of instructions
# end

def my_method
  puts "hello"
  yield if block_given?
  puts "goodbye"
end


my_method do
  puts "I'm a block"
end

def largest(*numbers)
  puts "hello"
  yield(numbers) if block_given?
  puts "goodbye"
end

largest(1,2,3,4,5) do |args|
  puts args.max
end
