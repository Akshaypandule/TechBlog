package com.tech.blog.dao;

import java.sql.Timestamp;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.tech.blog.entities.Category;
import com.tech.blog.entities.Post;

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
	public boolean savePost(Post post) {
		
		boolean f=false;
		try {
			
			String query="insert into posts (pTitle,pContent,pCode,pPic,catId,userid) values(?,?,?,?,?,?)";
			PreparedStatement pstmt=conn.prepareStatement(query);
			pstmt.setString(1, post.getpTitile());
			pstmt.setString(2, post.getpContent());
			pstmt.setString(3,post.getpCode());
			pstmt.setString(4, post.getpPic());
			pstmt.setInt(5, post.getCatId());
			pstmt.setInt(6, post.getUserid());
			
			pstmt.execute();
			f=true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		return f;
	}
	public ArrayList<Category> getPostCategories(){

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
	// Getting All Posts 
	
	public List<Post> getAllPost()
	{
		
		List<Post> list=new ArrayList<>();
		
		try {
			
			PreparedStatement p=conn.prepareStatement("select*from posts order by desc");
			
			ResultSet set=p.executeQuery();
			
			while(set.next()) {
				
				int pid=set.getInt("pId");
				String pTitle=set.getString("pTitle");
				String pContent=set.getString("pContent");
				String pCode=set.getString("pCode");
				String pPic=set.getString("pPic");
				Timestamp date=set.getTimestamp("pDate");
				int catId=set.getInt("catId");
				int userid=set.getInt("userid");
				
				Post post=new Post(pid,pTitle,pContent,pCode,pPic,date,catId,userid);
				
				list.add(post);
			}
			
			
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return list;
	}
	
	public  List<Post> getPostBycatid(int catId){
		List<Post> list=new ArrayList<>();
		
		try {
			
			PreparedStatement p=conn.prepareStatement("select*from posts where catId=?");
			p.setInt(1, catId);
			
			ResultSet set=p.executeQuery();
			
			while(set.next()) {
				
				int pId=set.getInt("pId");
				String pTitle=set.getString("pTitle");
				String pContent=set.getString("pContent");
				String pCode=set.getString("pCode");
				String pPic=set.getString("pPic");
				Timestamp pDate=set.getTimestamp("pDate");
				int userid=set.getInt("userid");
				
				
				Post post=new Post(pId,pTitle,pContent,pCode,pPic,pDate,catId,userid);
				
				list.add(post);
				
			}
			
			
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		return list;
	}

}
