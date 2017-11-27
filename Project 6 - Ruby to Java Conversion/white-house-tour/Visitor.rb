class Visitor
  attr_reader :name, :gender, :age, 
    :nationality, :current_room

    def initialize the_name, the_gender, the_age, the_citizenship
    @name = the_name
    @gender = the_gender
    @age = the_age
    @nationality = the_citizenship
    @current_room = 0
  end

  def next_room
  	if @current_room <= 6
      @current_room += 1
    end
  end
    
  def to_s
    return "%-20s %-15s %d" %
      [@name, @citizenship, @current_room]
  end
  
  def name_citizenship
    return "%-20s %-15s" %
      [@name, @citizenship]  	
  end
	
end