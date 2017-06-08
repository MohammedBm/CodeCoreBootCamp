puts "Enter a word"
my_string = gets.chomp
user_input = my_string.downcase


if user_input.include? "c"
   puts "String includes 'c'"
end
