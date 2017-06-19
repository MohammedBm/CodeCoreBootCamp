


#Given a ruby Hash that looks like this:
 major_cities = {
   BC: ["Vancouver", "Victoria", "Prince George"],
   AB: ["Edmonton", "Calgary"]}
#Write a piece of code that loops through the object and prints the following to the console:
# BC has 3 main cities: Vancouver, Victoria, Prince George
# AB has 2 main cities: Edmonton, Calgary

result = ""
  major_cities.each do |key, value|
    result += "#{key} has #{value.size}"
     puts result
  end
