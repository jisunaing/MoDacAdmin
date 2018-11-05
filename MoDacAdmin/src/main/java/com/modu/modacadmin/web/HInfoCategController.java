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
import com.modu.modacadmin.service.HInfoDto;
import com.modu.modacadmin.service.HInfoService;
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
	
	@Resource(name="hInfoService")
	private HInfoService hinfoservice;
	
	// Categ_create
	@RequestMapping(value = "HInfoCategCreate.do", method = RequestMethod.POST)
	public String hInfoCategCreate(HInfoCategDto dto) throws Exception {
		service.insert(dto);
		// list로 이동
		return "forward:healthinfoList.do";
	}
	
	// HInfoCateg list
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
	
	@RequestMapping("healthinfoCategoryView.do")
	public String healthInfoCategoryView(Model model, HttpServletRequest req, 
								@RequestParam Map map, 
								@RequestParam(required=false, defaultValue="1") int nowPage) throws Exception {

		// 카테고리 상세보기
		HInfoCategDto record = service.selectOne(map);
		record.setExplanation(record.getExplanation().replace("\r\n","<br/>"));
		model.addAttribute("record", record);
		
		// 카테고리 하위 리스트
		int totalRecordCount= hinfoservice.getTotalRecord(map);	
		System.out.println("hinfo_cnt: "+totalRecordCount);
		int start = (nowPage-1)*pageSize+1;
		int end   = nowPage*pageSize;
		map.put("start",start);
		map.put("end",end);
		
		List<HInfoDto> list = hinfoservice.selectList(map);
		
		String pagingString=PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+ "/healthinfoView.do?");

		model.addAttribute("list", list);
		model.addAttribute("pagingString", pagingString);
		model.addAttribute("totalRecordCount", totalRecordCount);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("nowPage", nowPage);
		
		System.out.println("list_size: "+list.size());
		System.out.println("categno: "+map.get("categno"));
		
		return "healthinfo/HealthInfoCategoryView.tiles";
	}

	@RequestMapping("healthinfoCategoryEdit.do")
	public String HealthInfoCategoryEdit(@RequestParam Map map, Model model) throws Exception {
		HInfoCategDto record= service.selectOne(map);
		model.addAttribute("record", record);
		// 수정 폼으로 이동
		return "healthinfo/HealthInfoCategoryEdit.tiles";
	}
	
	@RequestMapping("HInfoCategEdit.do")
	public String hInfoCategEdit(HInfoCategDto dto) throws Exception {
		service.update(dto);
		return "forward:healthinfoCategoryView.do?categno="+dto.getCategno();
	}
	
	@RequestMapping("healthinfoDelete.do")
	public String hInfoCategDelete(@RequestParam Map map, Model model) throws Exception {
		map.put("categno", map.get("cateno"));
		HInfoCategDto record= service.selectOne(map);
		try {
			service.delete(record);
			System.out.println("delete"+record.getCategno());
			return "forward:healthinfoList.do";
		} catch(Exception e) {
			String alert = "카테고리에 글이 존재합니다. 관련 글을 삭제 후 카테고리를 삭제하세요";
			model.addAttribute("alertmsg", alert);
			
			return "forward:healthinfoCategoryView.do?categno="+record.getCategno();
		}
	}
}

