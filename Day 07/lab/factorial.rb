def factorial(n=0)
  (1..n).inject(:*)
end


puts factorial(2)
puts factorial(5)
puts factorial(3)
puts factorial(10)
