package com.modu.modacadmin.web;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.modu.modacadmin.service.ManagersDto;
import com.modu.modacadmin.service.ManagersService;

@Controller
public class MemberController {
	
	
	@Resource(name="managersService")
	private ManagersService service;
	

	// 폼으로 이동
	@RequestMapping("RegisterForm")
	public String regiterform() throws Exception{
		return "member/Register";
	}
	
	// 로그인페이지
	@RequestMapping(value="Register.do", method = RequestMethod.POST)
	public String register(ManagersDto dto, HttpSession session) throws Exception {
		int affected = 0;
		try {
			affected = service.insert(dto);
		} catch(Exception e) {
			session.setAttribute("registerSuccess", "관리자계정 추가 실패");
		}
		if(affected == 1)
			session.setAttribute("registerSuccess", "관리자계정 " + dto.getMid() + " 추가 성공");
		else 
			session.setAttribute("registerSuccess", "관리자계정 추가 실패<br/>다시입력해주세요");
		return "member/Register";
	} // Login
} // controller