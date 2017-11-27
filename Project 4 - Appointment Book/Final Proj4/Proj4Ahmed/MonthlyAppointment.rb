#Faizan Ahmed
#Project 4 - MonthlyAppointment Class 
#10/26/2015

#derived class - inherits from Appointment class
class MonthlyAppointment < Appointment

	#setting up the getters & setters using attr_accessor
	attr_accessor :day
	
	#super used to initialize params from Appointment
	def initialize(the_location, the_purpose, the_day, the_hour, the_min)
		super(the_location, the_purpose, the_hour, the_min)
		@day = the_day
	end
	
	#occurs_on? method (boolean) - returns true or false
	def occurs_on?(the_year, the_month, the_day)
		return @day == the_day 
	end                  
	
	#to_string method
	def to_s
		return "#{super.to_s} #{@day}"
	end
	
end
