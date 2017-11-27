#Faizan Ahmed
#10/1/2015
#Project 3 - Card Class

class Deck
	
	def initialize()
				
		@cards = [ ]
		for rank in 2..14
			for suit in ['C', 'D', 'H', 'S']
				c = Card.new(rank, suit)
				@cards << c
			end
		end 
	end
	
	#Method: Adding Card to the top of Deck
	def add_to_top(the_card)
		@cards.push(the_card)
	end
	
	#Method: Adding Card to the bottom of Deck
	def add_to_bottom(the_card)
		@cards.unshift(the_card)
	end

	
	#Method: Deals the Card from deck by using pop()
	def deal()
		@cards.pop() #shift?
	end
	
	#Method: Checks if the Deck is empty
	def empty?
		if @cards.length == 0
			return true
		else
			return false
		end
	end
	
	#Method: Shuffling the Array of Cards
	def shuffle!
		@cards.shuffle!
	end
	
	#Method: Counting number of Cards in Deck
	def count()
		return @cards.length
	end
	
	#Method: Printing Cards by appending to Array
	def to_s
		output = ""
		@cards.each do |card|
			output += card.to_s + "\n"
		end
			return output
	end
	
end