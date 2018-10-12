package com.modu.modacadmin.service;

/*
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 MID                                       NOT NULL VARCHAR2(20)
 MNAME                                     NOT NULL NVARCHAR2(10)
 MPWD                                      NOT NULL VARCHAR2(20)
*/

// 관리자테이블의 DTO
public class ManagersDto {
	private String mid;
	private String mname;
	private String mpwd;
	
	// getter setter~
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMpwd() {
		return mpwd;
	}
	public void setMpwd(String mpwd) {
		this.mpwd = mpwd;
	}
	// ~getter setter
} // class
