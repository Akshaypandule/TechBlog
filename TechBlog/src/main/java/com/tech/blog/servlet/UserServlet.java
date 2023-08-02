package com.tech.blog.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tech.blog.dao.Userdao;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;

public class UserServlet extends HttpServlet{
	
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String check=request.getParameter("check");
		if(check==null) {
			
			out.println("Please tik the check box");
		}
		else
		{
			String name=request.getParameter("user_name");
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			String gender=request.getParameter("gender");
			String about=request.getParameter("about");
			String profile=request.getParameter("profile");
			
			// create user object and set the data in user object
			User user=new User(name,email,password,gender,about,profile);
			
			// create userDao object because query is created inside the user dao.
			
			Userdao dao=new Userdao(ConnectionProvider.getConnection());
			if(dao.saveUser(user)) {
				
				response.sendRedirect("loginsuccess.jsp");
			}
			else
			{
				response.sendRedirect("error.jsp");
			}
		}
		
		
	}

}
