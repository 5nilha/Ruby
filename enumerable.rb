#Enumerables

class Menu
 include Enumerable
 
 def each
   yield "Pizza"
   yield "Spaghetti" 
   yield "Salad"
   yield "Water"
   yield "Bread"
 end 
end 


menu_options = Menu.new

menu_options.each do |item|
  puts "Would you like #{item}"
end

p menu_options.find {|item| item = "Pizza"}  # find if one of the items is equal to Pizza

p menu_options.select {|item| item.size <= 5} # select all the options with string size <= 5 
p menu_options.reject {|item| item.size <=5 } # reject all the options with string size <= 5

p menu_options.first  # prints out the first item

p menu_options.take(2) # prints out an array with the first two items
p menu_options.take(3) # prints out an array with the first n items, in this case, the first 3 items.

p menu_options.drop(2) # Return all the items "EXCEPT" the first two

p menu_option.min # return the minimum item. (when number, returns the minimum number, when letters or words, return the minimum alphabet)

p menu_option.max # return the maximum item. (when number, returns the maximum number, when letters or words, return the maximum alphabet)

p menu_option.sort # sort in alphabet order or in crescent numbers order

p manu_options.reverse_each  {|item| puts item}  # prints out each item with reversed string