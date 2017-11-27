require './Room.rb'
require './Visitor.rb'

class WhiteHouseTour
	attr_reader :rooms, :visitors, :num_visitors, :current_time
		
	def initialize
		@rooms = [ ]
		@visitors = [ ]
		@num_visitors = 0
		@current_time = 540
		
		@rooms << Room.new("Entrance Hall", 
%Q\This room (also called the Grand Foyer) is the 
primary and formal entrance to the White House. The room 
is rectilinear in shape and measures approximately 31 by 
44 feet. Located on the State Floor, the room is entered 
from outdoors through the North Portico, which faces the 
North Lawn and Pennsylvania Avenue. The south side of 
the room opens to the Cross Hall through a screen of 
paired Roman Doric columns. The east wall opens to the 
Grand Staircase.\)

		@rooms << Room.new("Cross Hall",
%Q\This hall connects the first floor in the White House. 
It runs east to west connecting the State Dining Room with 
the East Room. The room is used for receiving lines 
following a State Arrival Ceremony on the South Lawn, 
or a procession of the President and a visiting head of 
state and their spouses.  The space measures just under 
18 by 80 feet (5.5 by 24 m). It allows access to the 
elevator vestibule, Entrance Hall,East Room, Blue Room, 
Green Room, Red Room, and State Dining Room. The Grand 
Staircase is visible from an opening directly across from
the Green Room.\)

    @rooms << Room.new("East Room",
%Q\This is the largest room in the White House. It is 
used for receptions, press conferences, ceremonies, 
concerts, and banquets. The room is "not quite 80 feet
by 37 feet" and the ceiling is "over 20 feet high."
The White House's oldest possession, the Lansdowne 
portrait depicting George Washington, painted by 
Gilbert Stuart in 1797, was rescued from the 1814 
fire, and now hangs in the East Room with a companion
portrait of Martha Washington painted by Eliphalet
F. Andrews in 1878.\)

    @rooms << Room.new("Green Room",
%Q\It is one of three state parlors on the first floor 
in the White House, It is used for small receptions and
teas. During a state dinner, guests are served cocktails
in the three state parlors before the president, first
lady, and visiting head of state descend the Grand
Staircase for dinner. The room is traditionally 
decorated in shades of green. The room is approximately
28 feet by 22 12 feet (approx. 8.5m x 6.8m). It has 
six doors, which open into the Cross Hall, East Room, 
South Portico, and Blue Room.\)

    @rooms << Room.new("Blue Room",
%Q\This room is one of three state parlors on the first 
floor in the White House, the residence of the President
of the United States. It is distinct for its oval shape.
The room is used for receptions and receiving lines, and
is occasionally set for small dinners. President Grover 
Cleveland married Frances Folsom in the room on June 2,
1886, the only wedding of a President and First Lady in
the White House. The room is traditionally decorated in
shades of blue. With the Yellow Oval Room above it and
the  Diplomatic Reception Room below it, the Blue Room 
is one of three oval rooms in James Hoban's original
design for the White House.  The room is approximately 
30 by 40 feet (9.1 by 12 m). It has six doors, which 
open into the Cross Hall, Green Room, Red Room, and 
South Portico. The three windows look out upon the 
South Lawn.\)

    @rooms << Room.new("Red Room",
%Q\This is one of three state parlors on the first floor
in the White House.  The room has served as a parlor and
music room, and recent presidents have held small dinner
parties in it.  It has been traditionally decorated in 
shades of red.  The room is approximately 28 feet by 22.5
feet. It has six doors, which open into the Cross Hall,
Blue Room, South Portico, and State Dining Room.\)

    @rooms << Room.new("State Dining Room",
%Q\This room is the larger of two dining rooms on the
State Floor of the White House. It is used for receptions, 
luncheons, and larger formal dinners called state dinners
for visiting heads of state on state visits. The room seats
140 guests. The room measures approximately 48 feet by 36
feet. It has six doors leading to a butler's pantry, the
Family Dining Room, Cross Hall, and Red Room, and the West
Terrace.  During the Andrew Jackson administration the room 
came to be formally called the "State Dining Room."\)
  end
  
  def rooms
    output = 
%Q\White House Rooms Included in Tour
===================================
\
    num_rooms = @rooms.length
  	for i in 0..(num_rooms - 1)
  		output += @rooms[i].to_s + "\n"
    end
    return output
  end
  
  def to_s
  	output = "%02d:%02d\n" % 
      [@current_time / 60, @current_time % 60]
    output += "Current White House Tour Visitors\n" +
    	        "======================================\n"
    for i in 0..(@num_visitors - 1)
    	if @visitors[i].current_room <= 6
    	  output += @visitors[i].to_s + "\n"
      end
    end
    return output
  end
  
  def admit_new_visitor the_name, the_gender, the_age, the_citizenship
    @num_visitors += 1
  	@visitors[@num_visitors - 1] = Visitor.new(the_name, the_gender, 
      the_age, the_citizenship)
  end
  
  def passage_of_time
   	@current_time += 15
    for i in 0..(@num_visitors - 1)
    	# Move to next room 50% of time in next time interval.
    	if rand(2) == 1
    		@visitors[i].next_room
    	end
    end
  end

end