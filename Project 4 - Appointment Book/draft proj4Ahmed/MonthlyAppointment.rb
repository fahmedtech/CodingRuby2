#Faizan Ahmed
#Project 3 - MonthlyAppointment Class 
#10/20/2015

require './MonthlyAppointment.rb'

class MonthlyAppointment < Appointment
	attr_reader :day
	
	def initialize(the_location, the_purpose, the_day, the_hour, the_min)
		super(the_location, the_purpose, the_hour, the_min)
		@day = the_day
	end
	
	def occurs_on?(the_year, the_month, the_day)
		if @year == the_year && @month == the_month && @day == the_day
			return true
		else
			return false
		end
	end
	
	
	def to_s
		return "#{super.to_s} #{@day}"
	end
	
end
