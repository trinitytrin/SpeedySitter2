package Package1;

import java.io.IOException;

public class BabySitter extends Person implements IPerson{
	
	private String contact;
	private String permit;
	private int aid;
	
	public int getId()
	{
		return this.id;
	} 
	
	public  void setId(int id)
	{
		this.id=id;
	}
	public  String getFname()
	{
		return this.fname;
	}
	public  void setFname(String fname)
	{
		this.fname=fname;
		
	}
	
	public  String getLname()
	{
		return this.lname;
	}
	public  void setLname( String lname)
	{
		this.lname=lname;
	}
	
	public  String getSex()
	{
		return this.sex;
	}
	public  void setSex( String s)
	{
		this.sex=s;
	}
	
	public void setAid(int aid)
	{
		this.aid=aid;
	}
	public int getAid()
	{
		return this.aid;
	}
	
	public  String getContact()
	{
		return this.contact;
	}
	public  void setContact( String s)
	{
		this.contact=s;
	}
	
	public  String getPermit()
	{
		return this.permit;
	}
	public  void setPermit( String s)
	{
		this.permit=s;
	}
	
	public void getAddressId()  throws IOException
	{
		System.out.println("get the address id from the database");
	}

	

}
