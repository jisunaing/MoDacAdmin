package com.modu.modacadmin.service;
/*
이름        널?       유형              
--------- -------- --------------- 
NO        NOT NULL NUMBER          
TITLE     NOT NULL NVARCHAR2(50)   
CONTENT   NOT NULL NVARCHAR2(2000) 
POSTADATE NOT NULL DATE            
GENID     NOT NULL VARCHAR2(20)    
*/
public class QnaDto {
	private String no;
	private String title;
	private String content;
	private java.sql.Date postadate;
	private String genid;
	
	
	
	
	
	public java.sql.Date getPostadate() {
		return postadate;
	}
	public void setPostadate(java.sql.Date postadate) {
		this.postadate = postadate;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public String getGenid() {
		return genid;
	}
	public void setGenid(String genid) {
		this.genid = genid;
	}
}
