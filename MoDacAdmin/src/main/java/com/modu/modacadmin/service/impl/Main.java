package com.modu.modacadmin.service.impl;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Main {
	
	
	@RequestMapping("main.do")
	public String mainMove()throws Exception{
		
/*
병원 총 수 얻어오는 쿼리문
select count (*) from hospital;

약국 총 수 얻어오는 쿼리문
select count (*) from pharmacy;

일반사용자 총 수 얻어오는 쿼리문
select count (*) from genmember;

병원 제휴 수 얻어오는 쿼리문
select count (*) from parthers;

나이대별 회원수 
select birthdate from genmember;

요일별 이용현황
select redate from reservation;

*/
		
		return "Main";
	}
	
	
}
