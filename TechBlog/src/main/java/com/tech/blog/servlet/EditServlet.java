package com.tech.blog.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.tech.blog.dao.Userdao;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;
import com.tech.blog.helper.Helper;
@MultipartConfig   // Multiline data coming 
public class EditServlet extends HttpServlet {
	
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		
		     response.setContentType("text/html");
		     PrintWriter out=response.getWriter();
		     
		     
		     String email=request.getParameter("email");
		     String name=request.getParameter("name");
		     String password=request.getParameter("password");
		     String about=request.getParameter("about");
		     Part part=request.getPart("image");
		     String imageName=part.getSubmittedFileName();
		     
		     // get User from the seesion
		     
		     HttpSession s=request.getSession();
		     User user=(User)s.getAttribute("currentuser");
		     user.setEmail(email);
		     user.setName(name);
		     user.setPassword(password);
		     user.setAbout(about);
		     user.setProfile(imageName);
		     
		     // Non static function ..create userdao object
		     
		     Userdao userdao=new Userdao(ConnectionProvider.getConnection());
		     boolean ans= userdao.updateUser(user);
		     if(ans) {
		    	 
		    	
		    	 // profile photo editing 
		    	 String path=request.getRealPath("/")+"pic"+File.separator+user.getProfile();
		    	 Helper.deletFile(path);
		    	 
		    		if( Helper.saveFile(part.getInputStream(), path))
		    		{
		    		 
		    		 out.println("updated database");
		    		}
		    	 
		     }
		     else
		     {
		    	 out.println("database not updated");
		     }
	}
}
