books = []

loop do

  puts "Enter a book name...."
  print "> "

  book_name = gets.chomp.downcase

  if book_name == "exit"
    break
  else
    books.push(book_name.capitalize)
  end

end
print "#{books.sort} \n"
