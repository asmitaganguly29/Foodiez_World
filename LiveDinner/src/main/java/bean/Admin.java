package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Admin 
{

	private String email;
	private String name;
	private String password;
	private String contact;
	
	public String getEmail() 
	{
		return email;
	}
	public void setEmail(String email) 
	{
		this.email = email;
	}
	public String getName() 
	{
		return name;
	}
	public void setName(String name) 
	{
		this.name = name;
	}
	public String getPassword() 
	{
		return password;
	}
	public void setPassword(String password) 
	{
		this.password = password;
	}
	public String getContact() 
	{
		return contact;
	}
	public void setContact(String contact) 
	{
		this.contact = contact;
	}
	
	public static Connection dbConnect() throws SQLException
	{
	//1. Register Driver
		DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
		
		//2. Connection(Url, User, Password)
		String url = "jdbc:mysql://localhost:3306/asmita";
		String user = "root"; //bydefault
		String password = "";
		
		Connection conn = DriverManager.getConnection(url, user,password);
		
		return conn;
	}
	
	
	public Admin login() throws SQLException
	{
		Connection conn = dbConnect();
	       
	       String sql = "Select *from admin where email=? and password=?";
			
		   PreparedStatement ps = conn.prepareStatement(sql);
		   ps.setString(1, email);
		   ps.setString(2, password);
			
	       ResultSet rs = ps.executeQuery();
	       
	       Admin ad = new Admin();
		     
		     if(rs.next())
		     {
		    	
		    	 ad.setEmail(rs.getString("email"));
		    	 ad.setName(rs.getString("name"));
		    	 ad.setPassword(rs.getString("password"));
		    	 ad.setContact(rs.getString("contact"));
		     }
		     else
		     {
		    	 ad = null;
		     }
			
		     return ad;
		}
	}

