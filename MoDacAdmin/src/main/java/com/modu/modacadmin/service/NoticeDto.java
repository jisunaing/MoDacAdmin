package com.modu.modacadmin.service;
/*
 Name                    Null?    Type
 ----------------------- -------- ----------------
 NO                      NOT NULL NUMBER
 TITLE                   NOT NULL NVARCHAR2(10)
 POSTDATE                         DATE
 CONTENT                          NVARCHAR2(2000)
*/
public class NoticeDto {
	private String no;
	private String title;
	private java.sql.Date postdate;
	private String content;
	
	// GETTER SETTER
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
	public java.sql.Date getPostdate() {
		return postdate;
	}
	public void setPostdate(java.sql.Date postdate) {
		this.postdate = postdate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
