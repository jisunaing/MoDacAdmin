package com.modu.modacadmin;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "home";
	}

	@RequestMapping("/index.do")
	public String index() throws Exception {
		return "index";
	}

	@RequestMapping("/Test.do")
	public String test() throws Exception {
		return "Test.tiles";
	}

	//////////////////////////////////////////////////////////////////////////
	// 건강정보 목록
	@RequestMapping("healthinfoList.do")
	public String HealthInfoList() throws Exception {
		return "healthinfo/HealthInfoList.tiles";
	}

	// 건강정보 목록 -카테고리 등록하기
	@RequestMapping("healthinfoCategoryCreate.do")
	public String HealthInfoCategoryCreate() throws Exception {
		return "healthinfo/HealthInfoCategoryCreate.tiles";
	}

	// 건강정보 카테고리 상세보기
	@RequestMapping("healthinfoCategoryView.do")
	public String HealthInfoCategoryView() throws Exception {
		return "healthinfo/HealthInfoCategoryView.tiles";
	}

	// 건강정보 목록 -카테고리 수정하기
	@RequestMapping("healthinfoCategoryEdit.do")
	public String HealthInfoCategoryEdit() throws Exception {
		return "healthinfo/HealthInfoCategoryEdit.tiles";
	}

	// 건강정보 상세보기
	@RequestMapping("healthinfoView.do")
	public String HealthInfoView() throws Exception {
		return "healthinfo/HealthInfoView.tiles";
	}

	// 건강정보 글 수정하기
	@RequestMapping("healthinfoEdit.do")
	public String HealthInfoEdit() throws Exception {
		return "healthinfo/HealthInfoEdit.tiles";
	}

	// 건강정보 글 등록하기
	@RequestMapping("healthinfoWrite.do")
	public String HealthInfoWrite() throws Exception {
		return "healthinfo/HealthInfoWrite.tiles";
	}
}