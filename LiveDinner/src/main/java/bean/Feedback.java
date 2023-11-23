package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;


public class Feedback
{
  private int feedbackId;
  private String customerName;
  private String feedback;
  private int rating;
  private Timestamp date;
  

public int getFeedbackId() 
{
	return feedbackId;
}
public void setFeedbackId(int feedbackId) 
{
	this.feedbackId = feedbackId;
}

public String getCustomerName() 
{
	return customerName;
}
public void setCustomerName(String customerName) 
{
	this.customerName = customerName;
}
public String getFeedback() 
{
	return feedback;
}
public void setFeedback(String feedback) 
{
	this.feedback = feedback;
}
public int getRating()
{
	return rating;
}
public void setRating(int rating) 
{
	this.rating = rating;
}

	public Timestamp getDate() 
	{
	return date;
}
public void setDate(Timestamp date) 
{
	this.date = date;
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

	public int addfeedback() throws SQLException
	{
	    Connection conn = dbConnect();
		
		//3. SQL Query (Insert, Update, Delete, Read)
		String sql = "Insert into feedback(customerName,feedback,rating) values(?, ?, ?)";
		
		//4. Statement & Execute
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, customerName);
		ps.setString(2, feedback);
		ps.setInt(3, rating);
		
		int response = ps.executeUpdate();
		
		//5. close connection
		conn.close();
		
		return response;
		}
	
	public ArrayList<Feedback> getAllfeedbacks() throws SQLException
	 {
		Connection conn = dbConnect();
		
		String sql = "select *from feedback order by feedbackId desc limit 2 ";
		
		PreparedStatement ps = conn.prepareStatement(sql);
		 		
		ResultSet rs = ps.executeQuery();
		
		ArrayList<Feedback> allfeedbacks = new ArrayList<Feedback>();
		
		while(rs.next())
		{
			Feedback new_fb = new Feedback();
			new_fb.setFeedbackId(rs.getInt("feedbackId"));
			new_fb.setCustomerName(rs.getString("customerName"));
			new_fb.setFeedback(rs.getString("feedback"));
			new_fb.setRating(rs.getInt("rating"));
			new_fb.setDate(rs.getTimestamp("date"));
			
			allfeedbacks.add(new_fb);
		}
		
		conn.close();
		
		return allfeedbacks;
}

}
