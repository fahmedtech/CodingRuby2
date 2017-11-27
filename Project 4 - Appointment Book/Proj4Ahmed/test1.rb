#Faizan Ahmed
#Project 4 - Unit Test File
#10/26/2015

require './Appointment.rb'
require './MonthlyAppointment.rb'
require './OneTimeAppointment.rb'
require 'minitest/autorun'

class TestClass < MiniTest::Test
  #tests: 3 | insertions: 15
  
  def test_1
  	#testing Appointment class methods
    app1 = Appointment.new("Library", "Job", 5, 45)
    assert_equal "Library Job 5:45", app1.to_s  
    
    assert_equal "Library", app1.location  
    assert_equal "Job", app1.purpose  
    assert_equal 5, app1.hour  
    assert_equal 45, app1.min  
  end
  
  def test_2
  	#testing MonthlyAppointment class methods
    app2 = MonthlyAppointment.new("Library", "Job", 15 ,5, 45)
    assert_equal "Library Job 5:45 15", app2.to_s  
    
    assert_equal 15, app2.day
    
    #occurs methods
    x = app2.occurs_on?(15, 5, 45)
    assert_equal true, x
    
    y = app2.occurs_on?(15, 5, 48)
    assert_equal false, y
  end
  
  def test_3
  	#testing OneTimeAppointment class methods
    app3 = OneTimeAppointment.new("Library", "Job", 2015, 11, 9, 7, 30)
    assert_equal "Library Job 7:30 9/11/2015", app3.to_s  
    
    assert_equal 2015, app3.year
    assert_equal 11, app3.month
    assert_equal 9, app3.day
    
    #occurs methods
    x = app3.occurs_on?(2015, 11, 9)
    assert_equal true, x
    
    y = app3.occurs_on?(2015, 11, 8)
    assert_equal false, y
  end
  
end