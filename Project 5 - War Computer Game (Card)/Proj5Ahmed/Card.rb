#Faizan Ahmed
#11/11/2015
#Project 5 - Card Class

class Card
	attr_reader :rank, :suit
	
	def initialize(the_rank, the_suit)
		@rank = the_rank
		@suit = the_suit
		
		@symbols = [nil, nil, '2', '3', '4', '5', '6', 
		'7', '8', '9', '10', 'J', 'Q', 'K', 'A']
	end
	
	#Method - To check the color of the Card
	def color()
		if (@suit == 'C' || @suit == 'S')
			print "Black"
		elsif (@suit == 'H' || @suit == 'D')
			print "Red"
		end
	end
	
	#Method - to_string returns a string
	def to_s()
		return @symbols[@rank] + @suit
	end

end
