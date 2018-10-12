package com.modu.modacadmin.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.modu.modacadmin.service.TestService;

@Controller
public class TestController {

	/* ���ҽ� �߰� */
	@Resource(name="testService")
	private TestService testService;
	
	
	@RequestMapping("/Test/Test.do")
	public String test(Model model) throws Exception {
		int test = testService.testdb();
		model.addAttribute("testvar", test);
		
		return "index"; // WEB-INF�Ʒ� ��ġ�� index.jsp
	} // test
} // class
