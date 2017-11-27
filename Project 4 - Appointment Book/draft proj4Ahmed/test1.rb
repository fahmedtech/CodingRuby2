#Faizan Ahmed
#Project 3 - Unit Test File
#10/20/2015

require './Appointment.rb'
require './MonthlyAppointment.rb'
require './OneTimeAppointment.rb'
require 'minitest/autorun'

class TestClass < MiniTest::Test
  
  def test_1
    app1 = Appointment.new("Library", "Job", 5, 45)
    assert_equal "Library Job 5:45", app1.to_s  

    app2 = MonthlyAppointment.new("Library", "Job", 15 ,5, 45)
    assert_equal "Library Job 5:45 15", app2.to_s  
    
    app3 = OneTimeAppointment.new("Library", "Job", 2015, 11, 9, 7, 30)
    assert_equal "Library Job 7:30 9/11/2015", app3.to_s  
  end
  
end