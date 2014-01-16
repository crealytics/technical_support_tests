class Heating
  #Attributes for Heating class
  attr_accessor :name, :area, :temperature, :efficiency
  
  #Heating class constructor
  def initialize (name, area, temperature)
    @name = name
    @area = area
    @temperature = temperature
    @efficiency = area / temperature
  end  
  
end
