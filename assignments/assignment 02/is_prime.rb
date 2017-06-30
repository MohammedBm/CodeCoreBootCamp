
#Write a Ruby method called: is_prime. The function must take a number n and it should return true or false whether the argument passed (n) is a prime number or not. A prime number is a number that is divisible only by 1 and itself.




def is_prime n
 for d in 2..(n - 1)
  if (n % d) == 0
   return false
  end
 end

 true
end

puts(is_prime(2))
