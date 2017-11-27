# Pseudocode for Project 4.

require './MonthlyAppointment.rb'
require './OneTimeAppointment.rb'
require 'date'

Open the file appointments.txt
Create empty array named appointments.
	appointments = []
while more lines in input file, read line from file.
  Use split to extract the fields from line into fields array.
  Assign fields[0] to appointment_type.
  if appointment_type is equal to 'ot'
    Assign fields[1] to room_number
    Assign fields[2] to purpose.
    Assign fields[3] to year after converting to Fixnum.
    Assign fields[4] to mon after converting to Fixnum.
    Assign fields[5] to day after converting to Fixnum.
    Assign fields[6] to hour after converting to Fixnum.
    Assign fields[7] to min after converting to Fixnum.
    Create new OneTimeAppointment object using data in room_number,
       purpose, year, mon, day, hour, and min.
    Push object onto appointments array.
  else 
    Assign fields[1] to room_number
    Assign fields[2] to purpose  of object.
    Assign fields[3] to day after converting to Fixnum.
    Assign fields[4] to hour after converting to Fixnum.
    Assign fields[5] to min after converting to Fixnum.
    Create new MonthlyAppointment object using data in room_number,
       purpose, day, hour, and min.
    Push object onto appointments array.
  end
end

Create new DateTime object for December 31, 2013 named dt.
for i in the range 1 to 365
  dt = dt + 1
  Assign year from dt.
  Assign mon from dt.
  Assign day from dt.
  for each appt in appointments
    if appt occurs on year, mon, and day (use occurs_on? method)
      print date in the form m/d/yy
      print appt, "\n\n"
    end
  end
end