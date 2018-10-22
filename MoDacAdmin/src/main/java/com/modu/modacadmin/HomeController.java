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
	/*
	@RequestMapping("healthinfoList.do")
	public String HealthInfoList() throws Exception {
		return "healthinfo/HealthInfoList.tiles";
	}
	*/

	@RequestMapping("healthinfoCategoryCreate.do")
	public String HealthInfoCategoryCreate() throws Exception {
		return "healthinfo/HealthInfoCategoryCreate.tiles";
	}

	@RequestMapping("healthinfoCategoryView.do")
	public String HealthInfoCategoryView() throws Exception {
		return "healthinfo/HealthInfoCategoryView.tiles";
	}

	@RequestMapping("healthinfoCategoryEdit.do")
	public String HealthInfoCategoryEdit() throws Exception {
		return "healthinfo/HealthInfoCategoryEdit.tiles";
	}

	@RequestMapping("healthinfoView.do")
	public String HealthInfoView() throws Exception {
		return "healthinfo/HealthInfoView.tiles";
	}

	@RequestMapping("healthinfoEdit.do")
	public String HealthInfoEdit() throws Exception {
		return "healthinfo/HealthInfoEdit.tiles";
	}

	@RequestMapping("healthinfoWrite.do")
	public String HealthInfoWrite() throws Exception {
		return "healthinfo/HealthInfoWrite.tiles";
	}
}