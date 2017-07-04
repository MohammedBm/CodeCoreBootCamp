module ExtednMethod
  def materils
    "language"
  end
  def magic
    "Hello banana"
  end
end

class Poerty
  extend ExtednMethod
end


class Classical
    extend ExtednMethod
end

p Poerty.materils
p Classical.magic


#include method

module IncludeMethod
  def count
    @content.scan(/;/).length
  end
end

class Helper
  include IncludeMethod
  attr_reader :content

  def initialize(text)
    @content = text
  end
end

class Analyis
  include IncludeMethod
  attr_reader :content

  def initialize(text)
    @content = text
  end
end

p hello = Analyis.new("this;she;not;c;;ool")

p hello.count
