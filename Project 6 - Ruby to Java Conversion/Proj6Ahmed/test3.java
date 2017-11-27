//Faizan Ahmed
//Project 6 - testing WhiteHourTour Class
//Nov 12, 2015

//require './Room.rb'
//require './Visitor.rb'
//require './WhiteHouseTour.rb'

public class test3{
	
	public static void main(String[] args){
		
		//creating WhiteHourTour object	
		WhiteHouseTour tour = new WhiteHouseTour();
		System.out.println(tour.rooms());
		
		System.out.println(tour);
		
		// Time: 9:00am
		tour.admitNewVisitor("Alex Smirnov", 'M', 35, "Russia");
		tour.admitNewVisitor("Stan Smith", 'M', 31, "United States");
		tour.admitNewVisitor("Maggie Malone", 'F', 32, "United States");
		tour.admitNewVisitor("George Zhao", 'M', 29, "China");
		tour.admitNewVisitor("Whitney Whiting", 'F', 32, "Canada");
		System.out.println(tour);
		
		// Time: 9:15am:
		tour.passageOfTime();
		System.out.println(tour);
		
		// Time: 9:30am:
		tour.passageOfTime();
		System.out.println(tour);
		tour.admitNewVisitor("Kate Collins", 'F', 31, "United States");
		tour.admitNewVisitor("Julia Collins", 'F', 7, "United States");
		tour.admitNewVisitor("Helmut Herzog", 'F', 71, "Germany");
		tour.admitNewVisitor("Raj Patel", 'M', 29, "India");
		tour.admitNewVisitor("Stephanie Rollins", 'F', 23, "United States");
		
		// Allow visitors to proceed through the tour at their own pace.
		while (tour.currentTime <= 1015){
			tour.passageOfTime();
			System.out.println(tour);
		} 
		
	} 
	
}