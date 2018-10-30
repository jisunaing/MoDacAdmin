package com.modu.modacadmin.service;
/*
SQL> desc healthinfo
 Name                    Null?    Type
 ----------------------- -------- ----------------
 HEALTHINFONO            NOT NULL NUMBER
 CATEGNO                 NOT NULL NUMBER
 TITLE                   NOT NULL NVARCHAR2(30)
 CONTENT                          NVARCHAR2(2000)
 POSTDATE                         DATE
 IMAGE                            NVARCHAR2(100)
*/
public class HInfoDto {
	private String healthinfono;
	private String categno;
	private String title;
	private String content;
	private java.sql.Date postdate;
	private String image;

	// getter setter
	public String getHealthinfono() {
		return healthinfono;
	}
	public void setHealthinfono(String healthinfono) {
		this.healthinfono = healthinfono;
	}
	public String getCategno() {
		return categno;
	}
	public void setCategno(String categno) {
		this.categno = categno;
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
	public java.sql.Date getPostdate() {
		return postdate;
	}
	public void setPostdate(java.sql.Date postdate) {
		this.postdate = postdate;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
}
