package com.modu.modacadmin.service;
/*
 Name                    Null?    Type
 ----------------------- -------- ----------------
 CATEGNO                 NOT NULL NUMBER
 EXPLANATION                      NVARCHAR2(1000)
 CATEGNAME               NOT NULL NVARCHAR2(20)
 CATGIMAGE                        NVARCHAR2(100)
*/
public class HInfoCategDto {
	private String categno;
	private String explanation;
	private String categname;
	private String categimage;
	
	// getter setter
	public String getCategno() {
		return categno;
	}
	public void setCategno(String categno) {
		this.categno = categno;
	}
	public String getExplanation() {
		return explanation;
	}
	public void setExplanation(String explanation) {
		this.explanation = explanation;
	}
	public String getCategname() {
		return categname;
	}
	public void setCategname(String categname) {
		this.categname = categname;
	}
	public String getCategimage() {
		return categimage;
	}
	public void setCategimage(String categimage) {
		this.categimage = categimage;
	}
}
