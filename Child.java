package Package1;

public class Child extends Person {
	private String SpecialNeeds;
	 int pid1;
	 int pid2;
	

	
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
	
	public String getSpecialNeeds()
	{
		return this.SpecialNeeds;
	}
	
	public void setSpecialNeeds(String s)
	{
		this.SpecialNeeds=s;
	}
	
	public void getpid1()
	{
		System.out.println("This function will get parents id of the child from database");
		this.pid1=1;
	
		
	}
	
	public void getpid2()
	{
		System.out.println("This function will get parents id of the child from database");
		this.pid2=2;
		
	}

}
