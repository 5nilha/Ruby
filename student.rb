class Student
  
  attr_accessor :name, :id, :program

	def initialize  (name, id, program)
    @name = name
    @id = id
    @program = program
    @classes = [] 
  end 
  
  def add_class (program_class)
    @classes << program_class
  end
  
  def remove_class (program_class)
    @classes.remove(program_class)
  end
  
  def to_s 
    return "#{@name.ljust(25)}  V#{@id.ljust(20)}  #{@program.ljust(20)}"
  end
  
end

