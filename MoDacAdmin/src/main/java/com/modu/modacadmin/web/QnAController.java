package com.modu.modacadmin.web;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.modu.modacadmin.service.PqnaDto;
import com.modu.modacadmin.service.PqnaService;
import com.modu.modacadmin.service.QnaDto;
import com.modu.modacadmin.service.QnaService;
import com.modu.modacadmin.service.impl.PagingUtil;

@Controller
public class QnAController {
	
	@Resource(name="pqnaService")
	private PqnaService pService;
	
	@Resource(name="qnaService")
	private QnaService qnaService;
	
	@Value("${PAGESIZE}")
	private int pageSize;
	@Value("${BLOCKPAGE}")
	private int blockPage;
	
	
	
	//병원 문의 리스트
		@RequestMapping("PQnaList.do")
		public String pQnAList(Model model,
				HttpServletRequest req,
				@RequestParam Map map,
				@RequestParam(required=false,defaultValue="1") int nowPage
				) throws Exception{
			
			
	
			
			int totalRecordCount= pService.getTotalRecord(map);
					
			int start = (nowPage-1)*pageSize+1;
			int end   = nowPage*pageSize;
			map.put("start",start);
			map.put("end",end);
			
		
			List<PqnaDto> list = pService.selectList(map);
			
			if(map.get("searchWord") !=null) {
				
				String searchWord = map.get("searchWord").toString();
				String searchColumn = map.get("searchColumn").toString();
				
				String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage,
						nowPage,req.getContextPath()+ "PQnaList.do?searchWord="+searchWord+"&searchColumn="+searchColumn+"&");
				
				
				model.addAttribute("pagingString", pagingString);
				
			}//if
			else {
				
				String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage,
						nowPage,req.getContextPath()+ "PQnaList.do?");
				model.addAttribute("pagingString", pagingString);
			}
			
			
		
			model.addAttribute("list", list);
			model.addAttribute("totalRecordCount", totalRecordCount);
			model.addAttribute("nowPage", nowPage);
			model.addAttribute("pageSize", pageSize);

			return "qna/PQanList.tiles";		
			
			
			
		}///pQnAList

		// 관리자 문의 상세 페이지
		@RequestMapping("PQnaView.do")
		public String pQnAView(@RequestParam Map map,Model model) throws Exception {
			
			PqnaDto record = pService.selectOne(map);
			
			record.setContent(record.getContent().replace("\r\n","<br/>"));
			model.addAttribute("record", record);	

			return "qna/PQnaView.tiles";		
		}//////pQnAView
	
	
	
	
	
	
	//일반회원 문의 리스트		
		@RequestMapping("QnaList.do")
		public String QnAList(Model model,
				HttpServletRequest req,
				@RequestParam Map map,
				@RequestParam(required=false,defaultValue="1") int nowPage
				) throws Exception{
			
			
	
			
			int totalRecordCount= pService.getTotalRecord(map);
					
			int start = (nowPage-1)*pageSize+1;
			int end   = nowPage*pageSize;
			map.put("start",start);
			map.put("end",end);
			
		
			List<QnaDto> list = qnaService.selectList(map);
			
			if(map.get("searchWord") !=null) {
				
				String searchWord = map.get("searchWord").toString();
				String searchColumn = map.get("searchColumn").toString();
				
				String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage,
						nowPage,req.getContextPath()+ "QnaList.do?searchWord="+searchWord+"&searchColumn="+searchColumn+"&");
				
				
				model.addAttribute("pagingString", pagingString);
				
			}//if
			else {
				
				String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage,
						nowPage,req.getContextPath()+ "QnaList.do?");
				model.addAttribute("pagingString", pagingString);
			}
			
			
		
			model.addAttribute("list", list);
			model.addAttribute("totalRecordCount", totalRecordCount);
			model.addAttribute("nowPage", nowPage);
			model.addAttribute("pageSize", pageSize);

			return "qna/QanList.tiles";		
			
			
			
		}///pQnAList

		// 관리자 문의 상세 페이지
		@RequestMapping("QnaView.do")
		public String QnAView(@RequestParam Map map,Model model) throws Exception {
			
			QnaDto record = qnaService.selectOne(map);
			
			record.setContent(record.getContent().replace("\r\n","<br/>"));
			model.addAttribute("record", record);	

			return "qna/QnaView.tiles";		
		}//////pQnAView
	
	
  
	
	
	
	
   
}//QnAController