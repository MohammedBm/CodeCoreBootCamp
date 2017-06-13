bc_cities_population = {
  vancouver: 2135201,
  victoria:  316327,
  abbotsford: 149855,
  kelowna: 141767,
  nanaimo:88799,
  white_rock:82368,
  kamloops:73472,
  chilliwack:66382
}


def larger_or_small_city(cities)
  cities.each do |city, pop|
    if pop > 100000
      #something
      puts "#{city.capitalize} is a large city"
    else
      #something
      puts "#{city.capitalize} is a small city"

    end
  end
end


larger_or_small_city(bc_cities_population)
