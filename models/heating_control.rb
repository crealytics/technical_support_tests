class HeatingControl
	#init HeatingControl	
	def initialize()
       @array = Array.new
	end 
	   
	#adds a heating to the heating-array
	def add_heating(heating)
		@array << heating
	end
	
	#returns the number of controlled heatings
	def num_of_heatings()
		return @array.count 
	end
	
	#calculates the global efficiency
	def global_area()
		@areas=0		
		@array.each{ | a | @areas += a.area  }
		return @areas		
	end
		
	#calculates the average temperature
	def average_temperature()
		@temperatures=0		
		@array.each{ | a | @temperatures += a.temperature }		
		return (@temperatures / @array.count).round(2)
	end
end
