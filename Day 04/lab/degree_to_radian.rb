
PI = Math::PI

puts "Enter your degree to turn it into radian"
degree = gets.chomp.to_i

raidn = (degree*PI)/180

puts " Your radian is #{raidn.round(2)}"
