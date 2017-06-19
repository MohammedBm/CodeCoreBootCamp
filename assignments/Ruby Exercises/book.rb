
class Book
  attr_accessor :title, :chapters

  def initialize
    @chapters = []
  end

  def title
  end

  def add_chapters(chapter)
    @chapters << chapter
  end

  def chapters
    puts "Your Book: " + @title
    puts "My awesome book has " + @chapters.length.to_s + " chapters"
    i = 0
    @chapters.each { |x| puts (i += 1).to_s + ". #{x}" }
  end
end

book = Book.new
book.title = "My Awesome Book"
book.add_chapters("My Awesome Chapter 1")
book.add_chapters("My Awesome Chapter 2")
book.chapters
