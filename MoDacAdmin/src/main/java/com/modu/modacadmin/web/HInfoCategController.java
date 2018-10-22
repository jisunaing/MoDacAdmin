package com.modu.modacadmin.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.modu.modacadmin.service.HInfoCategDto;
import com.modu.modacadmin.service.HInfoCategService;
import com.modu.modacadmin.service.NoticeDto;
import com.modu.modacadmin.service.NoticeService;
import com.modu.modacadmin.service.impl.PagingUtil;


@Controller
public class HInfoCategController {
//	@Value("${PAGE_SIZE}")
	private int pageSize = 4;
//	@Value("${BLOCK_PAGE")
	private int blockPage = 4;
	
	@Resource(name="hInfoCategService")
	private HInfoCategService service;
	
	// HInfoCateg list
	@RequestMapping(value = "HInfoCategCreate.do", method = RequestMethod.POST)
	public String hInfoCategCreate(HInfoCategDto dto) throws Exception {
		System.out.println("HInfoCategCrerate.do_insertsss");
		System.out.println("service: "+service);
		System.out.println("dto.getimange: "+dto.getCategimage());
		System.out.println("dto,getexplanation: "+dto.getExplanation());
		service.insert(dto);
		// list로 이동
		return "forward:healthinfoList.do";
	}
	/*
	@RequestMapping("healthinfoList.do")
	public String HealthInfoList() throws Exception {
		return "healthinfo/HealthInfoList.tiles";
	}
	*/
	// notice list
	@RequestMapping("healthinfoList.do")
	public String healthinfoList(Model model, 
							HttpServletRequest req, 
							@RequestParam Map map,
							@RequestParam(required=false,defaultValue="1") int nowPage) throws Exception{
		
		//서비스 호출]
		//페이징을 위한 로직 시작]
		//전체 레코드 수
		int totalRecordCount= service.getTotalRecord(map);	
		System.out.println("totalRecordCount: "+totalRecordCount);
		//시작 및 끝 ROWNUM구하기]
		int start = (nowPage-1)*pageSize+1;
		int end   = nowPage*pageSize;
		map.put("start",start);
		map.put("end",end);
		System.out.println("병원 목록 페이지 list시작전");

		//페이징을 위한 로직 끝]	
		List<HInfoCategDto> list= service.selectList(map);
		//페이징 문자열을 위한 로직 호출]
		String pagingString=PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+ "/healthinfoList.do?");
		//데이타 저장]		
		model.addAttribute("list", list);
		model.addAttribute("pagingString", pagingString);
		model.addAttribute("totalRecordCount", totalRecordCount);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("nowPage", nowPage);
		
		return "healthinfo/HealthInfoList.tiles";
	}
	
}

