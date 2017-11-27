# Faizan Ahmed
# Project 4 - test2.rb
# 10/26/2015

require './Appointment.rb'
require './MonthlyAppointment.rb'
require './OneTimeAppointment.rb'
require 'date'

#empty array called "appointments"
appointments = []

#open the file and read 
File.open("appointments.txt", "r") do |f|
	while line = f.gets
		#split to extract the fields in array
		fields = line.split(",")
		appointment_type = fields[0] 
		#assign fields to appointment_type 
		if appointment_type == 'ot'
			room_number = fields[1] 
			purpose = fields[2]
			year = fields[3].to_i
			mon = fields[4].to_i
			day = fields[5].to_i
			hour = fields[6].to_i
			min = fields[7].to_i
			#creating OneTimeAppointment object using the fields data and pushing to array
			one_obj = OneTimeAppointment.new(room_number, purpose, year, mon, day, hour, min)
			appointments.push(one_obj)
		else 
			room_number = fields[1] 
			purpose = fields[2] 
			day = fields[3].to_i 
			hour = fields[4].to_i
			min = fields[5].to_i
			#creating MonthlyAppointment object using the fields data and pushing to array
			mon_obj = MonthlyAppointment.new(room_number, purpose, day, hour, min)
			appointments.push(mon_obj)
		end
	end
	
	#creating a new DateTime object name "dt" for December 31, 2013
	dt = DateTime.new(2013, 12, 31)
	for i in (1..365)
		dt = dt + 1
		year = dt.year 
		mon = dt.mon
		day = dt.day
		for appt in appointments
			#using occurs_on? method to check and print data from file
			if appt.occurs_on?(year, mon, day) 
				print "%d/%d/%d\n" % [mon, day, year % 100]
				print appt, "\n\n"
			end
		end
	end

#end to close the file
end