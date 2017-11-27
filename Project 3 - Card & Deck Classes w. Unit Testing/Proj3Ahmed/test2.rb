#Faizan Ahmed
#10/7/2015
#Project 3 - Unit Testing File

require './Deck.rb'
require './Card.rb'
require 'minitest/autorun'

class DeckClass < MiniTest::Test
	
	#testing deal method
	def test_1
		d = Deck.new
		c = d.deal()
		assert_equal "AS", c.to_s
	end
	
	#testing count method
	def test_2
		d = Deck.new
		d.deal()
		c = d.count()
		assert_equal 51, c
	end
	
	#testing empty? method
	def test_3
		d = Deck.new
		c = d.empty?()
		assert_equal "false", c.to_s 
	end
	
	#testing add_to_bottom method
	def test_4
		d = Deck.new
		d.add_to_bottom(Card.new(12, 'S'))
		c = d.count()
		assert_equal "53", c.to_s
	end
	
	#testing add_to_top method
	def test_5
		d = Deck.new
		d.add_to_top(Card.new(9, 'H'))
		c = d.count()
		assert_equal "53", c.to_s
	end
	
end