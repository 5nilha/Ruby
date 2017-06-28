class CssFile
	attr_accessor :link
  
   def set_css (css_file)
   end
   
   def css
     cssLink = "<link rel='stylesheet' type='text/css' href='#{@link}'>"
   end
	
end