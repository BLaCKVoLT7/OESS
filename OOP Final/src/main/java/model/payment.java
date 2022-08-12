package model;

//payment
public class payment {

	private String username;
	private String email;
	private String noOfProducts;
	private String amount;
	private String credit;
	private String bank;
	
	

	public String getusername()
	{
		return username;
	}
	public void setusername(String username)
	{
		this.username = username;
	}

	public String getemail() 
	{
		return email;
	}
	public void setemail(String email) 
	{
		this.email = email;
	}
	
	public String getnoOfProducts()
	{
		return noOfProducts;
	}
	public void setnoOfProducts(String noOfProducts) 
	{
		this.noOfProducts = noOfProducts;
	}
	
	public String getamount()
	{
		return amount;
	}
	public void setamount(String amount) 
	{
		this.amount = amount;
	}
	
	public String getcredit()
	{
		return credit;
	}
	public void setcredit(String credit) 
	{
		this.credit = credit;
	}
	
	public String getbank()
	{
		return bank;
	}
	public void setbank(String bank) 
	{
		this.bank = bank;
	}
	
}
