
given_hash = {:a => "123", :b => "345", :c => "678", :d => "910"}


arr = given_hash.map{|k,v| "#{k}#{v}"}.join(',')
puts "#{arr.split(',')}"
