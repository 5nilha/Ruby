# *names in the method parameter accept an array of names as argument
def greetingFriends (greeting, *names)
  names.each { |name| puts "#{greeting}, #{name}!"}
end

greetingFriends("Good Morning", "John", "Chelsea", "Busk", "Tod")