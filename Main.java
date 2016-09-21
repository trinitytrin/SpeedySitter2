package Package1;

import java.io.IOException;

public class Main {

	public static void main(String[] args) {
		try
		{
		
		System.out.println("Testing Working Code..");
		
		Parent p = new Parent();
		p.getAddressId();
		
		Address a = new Address();
		
		a.calculatePoints();
		a.pointsToaddress();
		
		FindLocation f = new FindLocation();
		f.getNearbyLocations(5);
		}
		
		catch(IOException e)
		{
			e.getMessage();
		}

	}

}
