#Faizan Ahmed
#Project 3 - OneTimeAppointment Class 
#10/20/2015

class OneTimeAppointment < MonthlyAppointment
	attr_reader :year, :month
	
	def initialize(the_location, the_purpose, the_year, the_month, the_day,
								the_hour, the_min)
		
		super(the_location, the_purpose, the_day, the_hour, the_min)
		@year = the_year
		@month = the_month
		
	end
	
	def occurs_on?(the_year, the_month, the_day)
		if @year == the_year && @month == the_month && @day == the_day
			return true
		else
			return false
		end
	end
	
	
	def to_s
		return "#{super.to_s}/#{@month}/#{@year}"
	end
	
end
