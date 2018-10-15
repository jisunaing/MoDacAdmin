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

import com.modu.modacadmin.service.NoticeDto;
import com.modu.modacadmin.service.NoticeService;
import com.modu.modacadmin.service.impl.PagingUtil;

@SessionAttributes("mid")
@Controller
public class NoticeController {
	// resource.properties
//	@Value("${PAGE_SIZE}")
	private int pageSize = 4;
//	@Value("${BLOCK_PAGE")
	private int blockPage = 4;
	
	@Resource(name="noticeService")
	private NoticeService service;
	
	// notice list
	@RequestMapping("NoticeList.do")
	public String noticeList(Model model, 
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
		List<NoticeDto> list= service.selectList(map);
		//페이징 문자열을 위한 로직 호출]
		String pagingString=PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+ "NoticeList.do?");
		//데이타 저장]		
		model.addAttribute("list", list);
		model.addAttribute("pagingString", pagingString);
		model.addAttribute("totalRecordCount", totalRecordCount);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("nowPage", nowPage);
		
		System.out.println("병원 목록 페이지 끝");
		return "notice/NoticeList.tiles";
	}
	
	// notice list
	@RequestMapping(value = "NoticeWrite.do", method = RequestMethod.POST)
	public String noticeWrite(NoticeDto dto) throws Exception {
		service.insert(dto);
		
		// list로 이동
		return "forward:NoticeList.do";
	}
	
	
	// notice list
	@RequestMapping("NoticeEdit.do")
	public String noticeEdit(NoticeDto dto) throws Exception {
		service.update(dto);
		return "forward:NoticeView.do?no="+dto.getNo();
	}
	
	//상세보기]
	@RequestMapping("NoticeView.do")
	public String view(@RequestParam Map map,Model model) throws Exception{
		//서비스 호출]
		//게시글 
		NoticeDto record= service.selectOne(map);		
		//데이타 저장]
		//줄바꿈 처리
		record.setContent(record.getContent().replace("\r\n","<br/>"));
		model.addAttribute("record", record);	
		//뷰정보 반환]
		return "notice/NoticeView.tiles";
	}/////////////////////
	
	//입력폼으로 이동 및 수정폼으로 이동 그리고 답변폼으로 이동]
	@RequestMapping(value="{path}",method=RequestMethod.GET)
	public String form(@PathVariable String path,Model model,@RequestParam Map map) throws Exception{
		switch(path) {
			case "NoticeWriteForm":
				return "notice/NoticeWrite.tiles";
		
			case "NoticeEditForm":
				NoticeDto record= service.selectOne(map);
				model.addAttribute("record", record);
				return "notice/NoticeEdit.tiles";
				
			default:
				/*
					//서비스 호출]
					ReplyBBSDto dto= service.selectOne(map);
					//데이타 저장]
					model.addAttribute("record", dto);
					//뷰정보 반환]
					return "bbs/"+path+".tiles";		
				*/
				return "";
		}		
	}///////////////write()
}