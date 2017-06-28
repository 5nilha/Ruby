#Arrays

#-------- Creating Arrays -----------

array_1 = Array.new   #creates an empty array
array_2 = Array.new(5)  #creates an array with 5 spaces. The default values are nil 
array_3 = Array.new(5, "empty")  # creates an array with 5 spaces, and the default space will store the string "empty"
array_4 = [1, 2, "three", 4.4, 5] #creates an array and stores different types
array_5 = [] #creates an empty array


puts array_4[0]  # prints the element at index 0 of the array
puts array_4.values_at(0, 1, 3).join(", ") # prints the elements at indexes 0, 1 and 3, joinning all them into a string separated by a comma

puts array_4.unshift(60) #add the value 60 at the begin index of the array.
puts array_4.shift() #removes the first element (index 0) of the array

array_4.push(100, 150) #Add the two values to the end tof the array
array_4.push(200) #add the value to the end of the array

array_4.pop  # removes the last element in the end of the array


array_4.concat([10, 20, 30])  #concatenates two arrays. The array_4 cocatenates with the array passed by the method call


puts "Array Size : " + array_4.size().to_s   # prints array's size
puts "Array Contains 100 : " + array_4.include?(100).to_s  # verify if the array contains the values 100, and print true or false.
puts "How Many 100s : " + array_4.count(100).to_s  # Evaluates how many elements of value 100 exist in the array, and prints on the screen

puts "Array Empty : " + array_4.empty?.to_s # Evaluates if the array is empty and print the booleans expressions true or false

puts array_4.join(", ")  #Joins the element of the array into a string separated by comma

p array_4

array_4.each { |value| puts value}  # iterate over each element of the array, and print it to the screen

array_4.sort # sort the array 

array_4.reverse  # reverse the array

