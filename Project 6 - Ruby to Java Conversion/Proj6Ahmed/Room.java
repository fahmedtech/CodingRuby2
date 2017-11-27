//Faizan Ahmed
//Project 6 - Room Class
//Nov 12, 2015

public class Room{
	
	//defining instance variables
	private String name;
	private String description;
	
	//constructor - initialize
	public Room(String theName, String theDesc){
		name = theName;
		description = theDesc;
	}
	
  //getters methods
	public String getName(){ return name; }
	public String getDescription() { return description; }
	
	//toString method
	public String toString(){
		return "The " + name + "\n" + description + "\n";
	}
	
}