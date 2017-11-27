class Room
	attr_reader :name, :description
	
	def initialize the_name, the_description
		@name = the_name
		@description = the_description
	end
	
	def to_s
		return "The " + @name + "\n" + @description + "\n"
	end
	
end