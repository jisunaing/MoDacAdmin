package com.modu.modacadmin.web;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginoutController {

	// �α���������
	@RequestMapping("AdminLogin.do")
	public String login() throws Exception {
		return "loginout/Login";
	} // Login
	
	// �α������μ���������
	@RequestMapping("LoginProcess.do")
	public String loginProcess(@RequestParam Map map, Model model) throws Exception {
		model.addAllAttributes(map);		
		
		return "loginout/loginProcess";
	}
} // controller