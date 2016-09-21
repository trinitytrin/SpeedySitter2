package Package1;


import java.io.IOException;


public class FindLocation {
	
	Parent p = new Parent();
	Address a = new Address();
	BabySitter b = new BabySitter();
	
	public void getNearbyLocations  (int aid) throws IOException
	{
		System.out.println("Given an address id or the co-ordinates of that id," 
				+ "this function will run some algorithm to find the "
				+ "near by locations with baby sitting request  of that address ");
		
	}

}
