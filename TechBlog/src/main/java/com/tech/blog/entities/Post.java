package com.tech.blog.entities;

import java.sql.Timestamp;

public class Post {
	
	private int pId;
	private String pTitile;
	private String pContent;
	private String pCode;
	private String pPic;
	private Timestamp pDate;
	private int catId;
	private int userid;
	
	public Post() {
		
	}
	public Post(int pId,String pTiltle,String pContent,String pCode,String pPic,Timestamp pDate,int catId,int userid) {
		
		this.pId=pId;
		this.pTitile=pTiltle;
		this.pContent=pContent;
		this.pCode=pCode;
		this.pPic=pPic;
		this.pDate=pDate;
		this.catId=catId;
		this.userid=userid;
		
	}
	public Post(String pTiltle,String pContent,String pCode,String pPic,Timestamp pDate,int catId,int userid) {
	
		this.pTitile=pTiltle;
		this.pContent=pContent;
		this.pCode=pCode;
		this.pPic=pPic;
		this.pDate=pDate;
		this.catId=catId;
		this.userid=userid;
		
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getpId() {
		return pId;
	}
	public void setpId(int pId) {
		this.pId = pId;
	}
	public String getpTitile() {
		return pTitile;
	}
	public void setpTitile(String pTitile) {
		this.pTitile = pTitile;
	}
	public String getpContent() {
		return pContent;
	}
	public void setpContent(String pContent) {
		this.pContent = pContent;
	}
	public String getpCode() {
		return pCode;
	}
	public void setpCode(String pCode) {
		this.pCode = pCode;
	}
	public String getpPic() {
		return pPic;
	}
	public void setpPic(String pPic) {
		this.pPic = pPic;
	}
	public Timestamp getpDate() {
		return pDate;
	}
	public void setpDate(Timestamp pDate) {
		this.pDate = pDate;
	}
	public int getCatId() {
		return catId;
	}
	public void setCatId(int catId) {
		this.catId = catId;
	}
	

}
