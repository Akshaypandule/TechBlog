package com.tech.blog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.tech.blog.entities.User;

public class Userdao {
	private Connection conn;
	public Userdao (Connection conn) {	
		this.conn=conn;
		
	}
	public boolean saveUser(User user) {
		boolean f=false;
		try {
			
			String query="insert into user(name,email,password,gender,about) value(?,?,?,?,?)";
			PreparedStatement pts=this.conn.prepareStatement(query);
			pts.setString(1, user.getName());
			pts.setString(2, user.getEmail());
			pts.setString(3, user.getPassword());
			pts.setString(4, user.getGender());
			pts.setString(5, user.getAbout());
			
			pts.executeUpdate();
			
			f=true;		
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
		return f;
	}
	
	// get user email and password from database
	
	public User getUserEmailandPassword(String email,String password) {
		//  create one user variable null.
		User user=null;
		try {
			 // try to fetch the data from database by using select query
			String query="select*from user where email=? and password=?";
			PreparedStatement pstmt=conn.prepareStatement(query);
			pstmt.setString(1, email);
			pstmt.setString(2, password);
			
			// data in result set 
		
			ResultSet rs= pstmt.executeQuery();
			// result contain parameter code enter into the if block.
			if(rs.next()) {
				
				// create new user and get data from result set and set into the user
				user=new User();
				String name=rs.getString("name");
				user.setName(name);
				user.setId(rs.getInt("id"));
				user.setEmail(rs.getString("email"));
				user.setGender(rs.getString("gender"));
				user.setAbout(rs.getString("about"));	
			}	
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return user;
	}
	
	public boolean updateUser(User user) {
		boolean f=false;
		try {
			
			String query="update user set name=? ,email=? ,password=? ,gender=? ,about=? ,profile=? where id=?";
			PreparedStatement p=conn.prepareStatement(query);
			p.setString(1, user.getName());
			p.setString(2, user.getEmail());
			p.setString(3, user.getPassword());
			p.setString(4, user.getGender());
			p.setString(5, user.getAbout());
			p.setString(6, user.getProfile());
			p.setInt(7,user.getId());
			
			p.executeUpdate();
			f=true;
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		return f;
	}
}
