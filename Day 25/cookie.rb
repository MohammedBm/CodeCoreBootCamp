class Cookie
  def initialize(sugar, flour)
    @sugar = sugar
    @flour = flour
  end

  def calorie_count
    @sugar * 5 + @flour * 4
  end
end
