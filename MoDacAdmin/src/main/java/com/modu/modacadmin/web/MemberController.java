package com.modu.modacadmin.web;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MemberController {
	// �α���������
	@RequestMapping("Register.do")
	public String register() throws Exception {
		return "member/Register";
	} // Login
} // controller