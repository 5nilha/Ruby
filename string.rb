first_name = "Fabio"
last_name = "Quintanilha"

full_name = "     #{first_name} #{last_name}"

puts full_name

#----- Eliminating white spaces ------
full_name = full_name.lstrip #eliminates the white spaces on the left
full_name = full_name.rstrip #eliminates all the white spaces on the right
full_namme = full_name.strip #eliminates all the white spaces


#----- Verifing if the string includes something specific -------
puts full_name.include?("Fabio")
puts full_name.size

puts full_name.start_with?("Fabio")
puts "Index : " + full_name.index("Fabio").to_s


#----- Counting how many vowels have in a string -------
puts "Vowels : " + full_name.count("aeiou").to_s # count the vowels in the string

#----- Counting how many consonants have in a string --------
puts "Consonants : " + full_name.count("aeiou").to_s #count the consonants looking for characters that don't match with vowels (opposite of vowels) using ^(anything except)


# ----- Modifing the string -------
puts full_name.upcase # convert the entire string to upper case 
puts full_name.downcase #convert the entire string to lower case
puts full_name.capitalize # Capitalize the begin of the string

puts full_name.chop #chop off the last character
puts full_name.chomp #Eliminate the new line if it exist. If the new line character does not exist, chomp eliminates the last two characters of the string

puts full_name.delete("a") #delete a specific character. Delete all the occurrency of the character in the string


puts full_name.rjust(20,'.') #puts the full name with 20 spaces  justified to the right. If full name is less than 20 spaces, the spaces will be convered with dots
puts full_name.ljust(20,'.') #puts the full name with 20 spaces  justified to the left. If full name is less than 20 spaces, the spaces will be convered with dots
puts full_name.center(20, '.') #puts the full name with 20 spaces  centralized. If full name is less than 20 spaces, the spaces will be convered with dots



# ----- Converting a String into an Array
name_array = full_name.split(//) #split the string into an array everywhere where have a new character
puts name_array


name_array = full_name.split(/ /)#split the string into an array everywhere where have a space
puts name_array


