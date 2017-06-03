
class APIConnector 
  attr_accessor :name, :email, :message
  
  def initialize(name: name, email: email, message: message)
    @name = name 
    @email = email
    @message = message
  end 
  
  def testing_initializers
    p @name
    p @email
    p @message
  end
end

class EmailConnector < APIConnector
  
end

api = EmailConnector.new(name: "Fabio", email: "test@test.com", message: "This is my email message")
api.testing_initializers







