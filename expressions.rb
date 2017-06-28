#expressions

x = ['apple', 'cherry', 'apple', 'banana']

print x.sort! #sort the array 
puts ""

print x.uniq! #return the array only with unique elements
puts ""

x.map! do |fruit| #map goes to each element in the array
  fruit.reverse
end.sort
puts x

print x.collect { |f| f.include? ("e")} 
puts ""

print x.any? { |f| f.length > 5 }
puts ""