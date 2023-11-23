package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Feedback;

@WebServlet(urlPatterns = "/add_feedback")
public class AddFeedback_Servlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		String customerName = req.getParameter("customerName");
		String feedback = req.getParameter("feedback");
		int rating = Integer.parseInt(req.getParameter("rating"));
		
		Feedback ob = new Feedback();
		ob.setCustomerName(customerName);
		ob.setFeedback(feedback);
		ob.setRating(rating);
		
	 PrintWriter out = resp.getWriter();
			
		try {
			int res = ob.addfeedback();
			if (res==1)
				out.println("Added Successfully");
			else
				out.println("Not Added");
			
		} catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	}

