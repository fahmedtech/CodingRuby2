#Faizan Ahmed
#Project 4 - Appointment Class 
#10/26/2015

#base class
class Appointment

	#setting up the getters using attr_reader
	attr_reader :location, :purpose, :hour, :min
	
	#initialize method - sets up the parameters for the Appointment object
	def initialize(the_location, the_purpose, the_hour, the_min)
		@location = the_location
		@purpose = the_purpose
		@hour = the_hour
		@min = the_min
	end
	
	#to_string method
	def to_s
		return "#{@location} #{@purpose} #{@hour}:#{@min}"
	end
	
end
