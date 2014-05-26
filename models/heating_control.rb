class HeatingControl 
  #Attributes for HeatingControl class
  attr_reader :num_ground, :num_radiator, :num, :radiator_heating, :ground_heating
  
  #HeatingControl class constructor
  def initialize()
     static_random_gen = srand()
     srand(static_random_gen)
     @radiator_heating = Heating.new('bathroom', 20, 35.4)
     @ground_heating = Heating.new('swimming pool', 180, 25.0)
     @num_radiator = rand(1..9)
     @num_ground = rand(1..9)  
     @num = num_radiator + num_ground   
  end
  
  #Add new heating and generate a random number for each heating
  def add_heating(name)
    @name = name
    srand()
  end
	
  #Return the number of controlled heatings  
  def num_of_heatings()
    return num
  end  
  
  #Calculate and return the global efficiency
  def global_area()
    return num_radiator * radiator_heating.area + num_ground * ground_heating.area
  end
  
  #Calculate and return the average temperature
  def average_temperature()
    return ((num_radiator * radiator_heating.temperature + num_ground * ground_heating.temperature)/num).round(2)
  end
  
end
