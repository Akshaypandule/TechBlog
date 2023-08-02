package com.tech.blog.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tech.blog.dao.Userdao;
import com.tech.blog.entities.Message;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;

public class LoginServlet extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		Userdao dao=new Userdao(ConnectionProvider.getConnection());
			User u=dao.getUserEmailandPassword(email, password);
		
		if(u==null) {
			
//			Message class object created
			
		Message msg=new Message("Invalid Details ! try again","error","alert-danger");
		
//		by using session msg send on login page 
		
		HttpSession s=request.getSession();
		s.setAttribute("msg", msg);
			response.sendRedirect("Login.jsp");
			//error
		} 
		else
		{
			// user store in Seesion .
			
			HttpSession s=request.getSession();
			s.setAttribute("currentuser", u);
			response.sendRedirect("Profile.jsp");
		}
	}

}
