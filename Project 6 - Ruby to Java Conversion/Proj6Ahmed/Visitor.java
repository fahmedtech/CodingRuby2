//Faizan Ahmed
//Project 6 - Visitor Class
//Nov 12, 2015

import java.text.*;

public class Visitor{
	
	//defining instance variables
	private String name;
	private char gender;
	private int age;
	private String citizenship;
	public int currentRoom;
	
	//constructor defined
	public Visitor(String theName, char theGender, int theAge, 
		String theCitizenship){
			name = theName;
			gender = theGender;
			age = theAge;
			citizenship = theCitizenship;
			currentRoom = 0;	
		}
		
		public void nextRoom(){
			if(currentRoom <= 6){
				currentRoom++;
			}
		}
		
		//.format() has been imported on top of class
		public String nameCitizenship(){
			String newString = String.format("-20s %-15s", name, citizenship);
			return newString;
		}
		
		//toString method
		public String toString(){
			String newString = String.format("%-20s %-15s %d", name, citizenship, currentRoom);
			return newString;
		}
		
}