#Faizan Ahmed
#Project 4 - OneTimeAppointment Class 
#10/26/2015

#derived class - inherits from Appointment class
class OneTimeAppointment < Appointment
	
	#setting up the getters & setters using attr_accessor
	attr_accessor :year, :month, :day
	
	#super used to initialize params from Appointment
	def initialize(the_location, the_purpose, the_year, the_month, the_day,
								the_hour, the_min)
		
		super(the_location, the_purpose, the_hour, the_min)
		@day = the_day
		@year = the_year
		@month = the_month
	end
	
	#occurs_on? method (boolean) - returns true or false
	def occurs_on?(the_year, the_month, the_day)
		return @year == the_year && @month == the_month && @day == the_day
	end
	
	#to_string method
	def to_s
		return "#{super.to_s} #{@day}/#{@month}/#{@year}"
	end
	
end
