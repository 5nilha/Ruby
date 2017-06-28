require './student.rb'

students = []
# students << Student.new("Fabio Quintanilha", "123456789", "Computer Science")
# students << Student.new("Gabriel", "908765432", "Computer Science")
# students << Student.new("Joe Catana", "223880974", "Computer Science")

def display_records (records)
  records.each do |record|
    puts record
  end
end

student_file = File.open( "students.txt" )   #Open File

while !(student_file.eof?)    # iterate int the loop looking the file until it is not the end of file
  student = student_file.gets.chomp.split(/, /)  #reads the first line and convet the string into an array, and stores into the array student
  students << Student.new(student[0], student[1], student[2])   # pass the information of array student to create a new object, and store it in another array called students
end


student_file. close    #Close the file

students.each do |student|
  student.program = "System Information"
end
  
display_records(students)