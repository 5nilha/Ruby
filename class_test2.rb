class API_Connector
  attr_accessor :title, :description, :url 
  
  def initialize (title, description, url)
    @title = title
    @description = description
    @url = url
  end
end

api = API_Connector.new("my title", "my description", "google.com")
p api