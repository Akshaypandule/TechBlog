package com.tech.blog.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.tech.blog.entities.Category;

public class Postdao {
	
	
	Connection conn;
	
	public Postdao(Connection conn) {
		this.conn=conn;
	}
	
	// create one method getting all category.....
	public ArrayList<Category> getAllCategories(){
		
		
		ArrayList<Category> list=new ArrayList<>();
		
		try {
			
			String q="select*from categories";
			Statement st=conn.createStatement();
			ResultSet set=st.executeQuery(q);
			
			while(set.next()) {
				
				int cid=set.getInt("cid");
				String name=set.getString("name");
				String description=set.getString("description");
				
				// create category object
				Category c=new Category(cid,name,description);
				list.add(c);
			}
			
			
			
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		return list;
		
	}

}
