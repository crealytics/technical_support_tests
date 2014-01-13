class Heating
	#init heating
	def initialize(name, area, temperature)
        @name = name
		@temperature = temperature
		@area = area
    end    
	
	#returns its name
	def name()
		return @name
	end
	
	#returns its temperature
	def temperature()
		return @temperature
	end
		
	#returns its area
	def area()
		return @area
	end
	
	#returns the calculated efficiency per degree	
	def efficiency()
		return @area / @temperature
	end
end
