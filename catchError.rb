#Handling possible error in a division of two numbers

print "Enter a number : "
first_num = gets.to_i

print "Enter Another number : "
second_num = gets.to_i

begin 
  answer = first_num / second_num
rescue
  puts "You can't divide by zero"
  exit
end

puts "#{first_num} / #{second_num} = #{answer}"