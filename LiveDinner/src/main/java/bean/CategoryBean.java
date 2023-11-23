package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CategoryBean
{
	private int categoryId;
	private String categoryName;
	
	public int getCategoryId() 
	{
		return categoryId;
	}
	public void setCategoryId(int categoryId) 
	{
		this.categoryId = categoryId;
	}
	public String getCategoryName() 
	{
		return categoryName;
	}
	public void setCategoryName(String categoryName)
	{
		this.categoryName = categoryName;
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
	
	public ArrayList<CategoryBean> getAllcategories() throws SQLException
	 {
		Connection conn = dbConnect();
		
		String sql = "select *from category order by categoryId";
		
		PreparedStatement ps = conn.prepareStatement(sql);
		 		
		ResultSet rs = ps.executeQuery();
		
		ArrayList<CategoryBean> allcategories = new ArrayList<CategoryBean>();
		
		while(rs.next())
		{
			CategoryBean new_cat = new CategoryBean();
			new_cat.setCategoryId(rs.getInt("categoryId"));
			new_cat.setCategoryName(rs.getString("categoryName"));
			
			
			allcategories.add(new_cat);
		}
		
		conn.close();
		
		return allcategories;
}
}
