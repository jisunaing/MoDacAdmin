package com.modu.modacadmin.web;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.modu.modacadmin.service.ManagersService;

@Controller
public class LoginoutController {
	@Resource(name="managersService")
	private ManagersService service;

	// �α���������
	@RequestMapping("AdminLogin.do")
	public String login() throws Exception {
		return "loginout/Login";
	} // Login
	
	// �α��� ó��
	@RequestMapping("LoginProcess.do")
	public String loginProcess(@RequestParam Map map,HttpSession session, Model model) throws Exception{
		boolean flag = service.isManager(map);
		
		if(flag) {
			model.addAllAttributes(map);
			session.setAttribute("mid", map.get("mid"));
		}
		else {
			session.setAttribute("ERROR", "�ٽ� �α������ּ���");
			return "forward:AdminLogin.do";
		}
		return "forward:index.do";
	}
	
	// �α׾ƿ�
	@RequestMapping("Logout.do")
	public String logout(HttpSession session) throws Exception {
		session.removeAttribute("mid");
		return "loginout/Login";
	}
} // controller