#Faizan Ahmed
#Project 3 - Appointment Class 
#10/20/2015

class Appointment
	attr_reader :location, :purpose, :hour, :min
	
	def initialize(the_location, the_purpose, the_hour, the_min)
		@location = the_location
		@purpose = the_purpose
		@hour = the_hour
		@min = the_min
	end
	
	def to_s
		return "#{@location} #{@purpose} #{@hour}:#{@min}"
	end
	
	
end
