#method test

def menu 
	menu_string = "1. View Number\n"
	menu_string += "2. Add Number\n"
	menu_string += "3. Subtract Number\n"
	menu_string += "4. Quit\n"
	return menu_string
end

# def add(x, y)
#   return x + y
# end
#
# def subtract(x, y)
#   return x - y
# end

user_choice = ""

while user_choice != 4
  puts menu
  user_choice = gets.chomp.to_i
  
  case user_choice
  when 1
    puts "View Number"
  when 2
    puts "Add some Number"
  when 3
    puts "Subtract some Number"
  when 4
    puts "Quit"
  else 
    puts "Error"
  end  
end
