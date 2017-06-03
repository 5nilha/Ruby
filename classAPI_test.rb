class APIConnector
  attr_accessor :title, :description, :url
  
  def initialize (title, description, url)
    @title = title 
    @description = description
    @url = url
  end
  
  def getTitle
    return @title
  end
  
  def getDescription
    return @description
  end
  
  def getURL
    return @url
  end
  
end

api = APIConnector.new("My title", "My description", "Google.com")
p api.getTitle
p api.getDescription
p api.getURL