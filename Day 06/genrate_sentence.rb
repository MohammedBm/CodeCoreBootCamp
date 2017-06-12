
# Generate sentences in order from the array of arrays above.
# E.g: John ate an apple



genrateor = [
  ['John' , 'Steve' , 'Jen'],
  ['ate' , 'sat on ','bought'],
  ['an apple','the couch', 'a toothbrush']
]

sentences = []

generator.each do |words|
  words.each.with_index do |word, i|
    sentences[i] = if sentences[i]
      sentences[i] +=  ' ' + words[i]
    else
      words[i]
    end
  end
end

puts sentences



10.times do |i|
  puts "#{generator[0].sample} #{generator[1].sample} #{generator[2].sample}"
end
