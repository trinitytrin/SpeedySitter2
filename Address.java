package Package1;
import java.io.IOException;

public class Address implements IAddress {
	String street;
	String apt;
	String city;
	String state;
	String zip;
	
	double lat;
	double lon;
	

	
	public  String getStreet()
	{
		return this.street;
	}
	public  void setStreet( String s)
	{
		this.street=s;
	}
	
	public  String getApt()
	{
		return this.apt;
	}
	public  void setApt( String s)
	{
		this.apt=s;
	}
	public  String getCity()
	{
		return this.city;
	}
	public  void setCity( String s)
	{
		this.city=s;
	}
	public  String getState()
	{
		return this.state;
	}
	public  void setState( String s)
	{
		this.state=s;
	}
	public  String getZip()
	{
		return this.zip;
	}
	public  void setZip( String s)
	{
		this.zip=s;
	}
	
	public void calculatePoints() throws IOException
	{
		System.out.println("This function will calculate the co-ordiate points of a given address");
	}
	public void pointsToaddress()throws IOException
	{
		System.out.println("This function will get the address of a location given the lat-lon points");
		
	}
	
	
	

}
