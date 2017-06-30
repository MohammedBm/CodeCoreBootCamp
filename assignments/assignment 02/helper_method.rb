
module HelperMethods

  def self.titleize(input)
    output_arr = input.split
    output = output_arr.map do |word|
      if (word == "in" || word == "the" || word == "of" || word == "and" || word == "or" || word == "from")
        next;
      else
        word.capitalize.concat(" ")
      end
    end

    return output.join
  end

end

HelperMethods.titleize("where in the world is the rabbit or kitten of hobbitston from?")
