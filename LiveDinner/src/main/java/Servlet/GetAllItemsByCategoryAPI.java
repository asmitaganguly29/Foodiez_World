package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import bean.ItemBean;

@WebServlet(urlPatterns = "/getAllItemsbyCat")

public class GetAllItemsByCategoryAPI  extends HttpServlet
{

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		
		int categoryId = Integer.parseInt(req.getParameter("categoryId"));
		
		
		
		ItemBean ab = new ItemBean();
		ab.setCategoryId(categoryId);
		
		ArrayList<ItemBean> allitems;
		try {
			allitems = ab.itembyid();
			
			 Gson gson = new Gson();
			 String jsonArray = gson.toJson(allitems);
			 
			 PrintWriter out = resp.getWriter();
			 out.println(jsonArray);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		 
		 
	}
}
