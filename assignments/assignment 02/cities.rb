


#Given a ruby Hash that looks like this:
 major_cities = {
   BC: ["Vancouver", "Victoria", "Prince George"],
   AB: ["Edmonton", "Calgary"]}
#Write a piece of code that loops through the object and prints the following to the console:
# BC has 3 main cities: Vancouver, Victoria, Prince George
# AB has 2 main cities: Edmonton, Calgary
def city_info(cities)
  cities.each do |key, value|
    puts "#{key} has #{value.length} main cities: #{value[0..-2].join(", ")} and #{value[-1]}"
    # puts "#{key} has #{value.length} main cities: #{value.join(", ")}"
  end
end

 # major_cities[:BC][0]
city_info(major_cities)
