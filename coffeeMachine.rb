#Coffee Machine Simulation 

class MrCoffee
  attr_reader :power, :water_level, :coffee_level
  
  @@max_water_level = 32.0     # Maximum  water storage of 32.0 oz
  @@max_coffee_level = 8.0     # Maximum  coffee storage of 4.0 oz
  @@standard_cup = 8.0         # Amount of water to be used to brew the coffee
  
  def initialize ()
    @power = false                     # Boolean true(on) / false (off)
    @water_level = 0.0                 # float oz
    @clock = 0.0                       # Time
    @coffee_level = 0.0                # float - oz (dry)
    @brewed_coffee_level = 0.0         # float - oz (finished coffee)
    @filter = false                    # boolean 
    @brewing_time = 0                  # time
    @temperature = 0.0                 # float (degrees C)
    @brewing = false                   #Brewing is happening
  end
  
  # -----------------Turn the machine on and off --------------------
  def turn_on    #turn the power on
    @power = true
  end
  
  
  def turn_off   # turn the power off
    @power = false 
  end 
  
  
  # ---------- Add water and coffee to the coffee machine -----------
  def remove_water (ounces)
    @water_level -= ounces
    if @water_level < 0
      @water_level = 0
    end
  end
  
  private 
  def use_water= (ounces)     # Amount of water used to breaw the coffee
    remove_water (ounces)
  end 
  
  public
  def add_water (ounces_of_water)    #add (set) the amount of water
    if @water_level < @@max_water_level 
      @water_level += ounces_of_water.to_f    #adds water to the amount of water that already have there 
       if @water_level > @@max_water_level    # protect the method to do not fill more water than the maximum ammount.
         @water_level = @@max_water_level
       end
   else 
     @water_level = @@max_water_level
   end
  end 
  
  
  def add_coffee (ounces_of_coffee)
    if @coffee_level < @@max_coffee_level
      @coffee_level += ounces_of_coffee.to_f
      
      if @coffee_level > @@max_coffee_level
        @coffee_level = @@max_coffee_level
      end
    else 
      @coffee_level = @@max_coffee_level
    end
  end 
  
  # --------- Adding and removing filter ---------
  
  def add_filter
    @filter = true 
  end
  
  def remove_filter 
    @filter = false 
  end 
  
  
  # ------------ Brew the coffee -------------
  
  def brew 
    if (@power && @water_level > 0.0 && @filter && @coffee_level > 0.0)
      @brewing = true
      self.use_water = @@standard_cup    # brew/ use 8.0 oz of water each time
      @coffee_level -= 2.0  
      @brewed_coffee_level += @@standard_cup
      self.remove_filter
      @brewing = false
      
      return "Your Coffee is Ready! Hummm... Delicious Coffee!!!"
    else 
      missing_stuf = ""
      if (@power != true) 
        missing_stuf += "\n- Power is off"
      end
      if (@water_level <= 0)
        missing_stuf += "\n- Empty water"
      end 
      if (@coffee_level <= 0)
        missing_stuf += "\n- Should add Coffee"
      end
      if (@filter != true)
        missing_stuf += "\n- Machine has no filter. Should Add a Filter"
      end
      
      return "Can't brew right now. Missing Stuff: #{missing_stuf}\n"
    end 
  end
  
end





class MakeCoffee < MrCoffee

  def menu 
    menu_choice = "===================================================\n"
    menu_choice += "#1 - Add Water\n"
    menu_choice += "#2 - Add Filter\n"
    menu_choice += "#3 - Add Coffee\n"
    menu_choice += "#4 - Verify Water Level\n"
    menu_choice += "#5 - Verify Coffee level\n"
    menu_choice += "#6 - Turn on the Machine\n"
    menu_choice += "#7 - turn off the Machine\n"
    menu_choice += "#8 - Start brewing coffee\n"
    menu_choice += "===================================================\n"
    menu_choice += "Choose an option:"
  end

  def menu_choice(choice)        # Menu number choice entered by the user
    case choice
    when "1", "add water", "water"
      puts "Please enter the Amount of water (max = 32oz): "
      amount = gets.chomp
      add_water(amount)
      puts "Water Added!"

    when "2", "add filter", "filter"
      add_filter
      puts "Filter added!"

    when "3", "add coffee", "coffee"
      puts "Please enter the Amount of Coffee (max = 8oz)"
      amount = gets.chomp
      add_coffee(amount)
      puts "Coffee Added!"

    when "4", "display water level", "display water", "verify Water level", "verify water"
      puts "Water level : " + water_level.to_s + " Ounces"

    when "5", "display coffee level", "display coffee", "verify coffee level", "verify coffee"
      puts "Coffee Level : " + coffee_level.to_s + " Ounces"

    when "6", "turn on the machine", "turn on", "on"
      turn_on
      puts "The machine is now On"

    when "7", "turn off the machine", "turn off", "off"
      turn_off
      puts "The Machine is now Off"

    when "8", "start brewimg coffee", "start brewing", "start", "brew"
      print ""
      puts brew

    else
      puts "You Entered a wrong menu choice"
    end
  end
  
end



new_coffee = MakeCoffee.new
choice = ""
while choice != "8" 
  puts new_coffee.menu
  choice = gets.chomp
  choice.to_s.downcase
  new_coffee.menu_choice(choice)
end
puts ""
 


#
#
# my_coffee = MrCoffee.new()
# my_coffee.turn_on
# puts my_coffee.power
#
# my_coffee.turn_off
# puts my_coffee.power
#
# my_coffee.add_water( 20 )
# my_coffee.add_water(10)
# p "Water level : " + my_coffee.water_level.to_s + " Ounces"
# my_coffee.add_coffee(16)
# p "Coffee Level : " + my_coffee.coffee_level.to_s + " Ounces"
#
# print my_coffee.brew