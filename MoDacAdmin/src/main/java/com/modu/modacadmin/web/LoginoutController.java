package com.modu.modacadmin.web;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginoutController {

	// 로그인페이지
	@RequestMapping("AdminLogin.do")
	public String login() throws Exception {
		return "loginout/Login";
	} // Login
	
	// 로그인프로세스페이지
	@RequestMapping("LoginProcess.do")
	public String loginProcess(@RequestParam Map map, Model model) throws Exception {
		model.addAllAttributes(map);		
		
		return "loginout/loginProcess";
	}
} // controller