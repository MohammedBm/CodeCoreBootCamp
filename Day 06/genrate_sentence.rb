#
# # Generate sentences in order from the array of arrays above.
# # E.g: John ate an apple
#
#
#
# genrateor = [
#   ['John' , 'Steve' , 'Jen'],
#   ['ate' , 'sat on ','bought'],
#   ['an apple','the couch', 'a toothbrush']
# ]
#
# sentences = []
#
# generator.each do |words|
#   words.each.with_index do |word, i|
#     sentences[i] = if sentences[i]
#       sentences[i] +=  ' ' + words[i]
#     else
#       words[i]
#     end
#   end
# end
#
# puts sentences
#
#
#
# 20.times do
#   puts genrateor.map{|words| words.sample}.join(' ')
# end
#


puts "Enter a sentence"
print "> "
input = gets.chomp
input = input.split

puts input.map{|v| v.capitalize}.join(' ')
