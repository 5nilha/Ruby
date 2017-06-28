puts "Insert the First name:"
first_name = gets.chomp

puts "Insert the Middle name:"
middle_name = gets.chomp

puts "Insert the Last Name:"
last_name = gets.chomp

new_first_name = first_name.downcase.reverse!
new_first_name.capitalize!

new_middle_name = middle_name.downcase.reverse!
new_middle_name.capitalize!

new_last_name = last_name.downcase.reverse!
new_last_name.capitalize!

p new_full_name = "Your new name is: #{new_first_name} #{new_middle_name} #{new_last_name}"