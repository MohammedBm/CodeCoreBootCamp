counter = 0;

for i in 65..90
  if counter < 26
    counter += 1
  end
  puts [i].map(&:chr).join * counter
  i += 1
end
