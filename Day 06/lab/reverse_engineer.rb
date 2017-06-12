
greeting = "hello"
greet = greeting.split("")

backwards = ""
greet.each do |i|
  backwards = i + backwards
end
puts backwards
