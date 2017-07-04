module HelperMethods
  def titleize(text)
    prep = %w(in the of and or from)
    text.split(" ").map do |word|
      if prep.include(word)
        puts word
      else
        puts word.capitalize.join(' ')
      end
    end
  end
end
