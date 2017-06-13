# a proc allows to crate a piece of code and assign that blocks
#to a varible. we can pass this code around just like any object in ruby


my_proc = proc do
  puts "I'm a proc"
end

my_proc = proc { puts "I'm a proc!"}
my_proc.call


my_lambda = lambda do
  puts "I'm a lambda"
end

my_lambda = lambda { puts "I'm a Lambda"}
my_lambda.call


#the difference between procs & lambda are:
# 1. procs don't allow you to use "return" withing it's code,while lambda do
# 2. lambda's are strict about the number of paramters or arguments you pass to
# it. procs are more flexible and will make them nill if you don't pass them.
