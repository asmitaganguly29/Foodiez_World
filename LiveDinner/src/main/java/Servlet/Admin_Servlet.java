package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Admin;



@WebServlet(urlPatterns = "/login")

public class Admin_Servlet extends HttpServlet
{
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		Admin ob = new Admin();
		ob.setEmail(email);
		ob.setPassword(password);
		
        PrintWriter out = resp.getWriter();
		
        try {
        	 Admin res = ob.login();
			if (res!=null)
			{
				HttpSession session = req.getSession();

				session.setAttribute("email", email);
				
				RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
				req.setAttribute("message", "LogIn Success");
				rd.forward(req, resp);
			}
			else
			{
				RequestDispatcher ab = req.getRequestDispatcher("login.jsp");
				req.setAttribute("message", "Login Failed");
				ab.forward(req, resp);
			}
			
		} catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
		
	}



