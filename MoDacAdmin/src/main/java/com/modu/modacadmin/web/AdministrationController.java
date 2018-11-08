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
import com.modu.modacadmin.service.impl.PagingUtil;
import com.modu.modacadmin.service.PartnerService;

@Controller
public class AdministrationController {

	@Resource(name="partnerService")
	private PartnerService service;
	
	@Value("${PAGESIZE}")
	private int pageSize;
	@Value("${BLOCKPAGE}")
	private int blockPage;
	
		
	// 제휴회원 신청 목록
	@RequestMapping("PartnersRequest.do")
	public String partnerRequest(HttpServletRequest req,@RequestParam Map map,Model model,@RequestParam(required=false,defaultValue="1") int nowPage) throws Exception {
		
		
		
		List<Map> partner  = service.selectPartnerJoin(map);
		
		System.out.println("partner : "+partner);
	
		int totalRecordCount= service.getTotalRequestList(map);
		
		int start = (nowPage-1)*pageSize+1;
		int end   = nowPage*pageSize;
		map.put("start",start);
		map.put("end",end);
		
		if(map.get("searchWord") !=null) {
			
			
			String searchWord = map.get("searchWord").toString();
			String searchColumn = map.get("searchColumn").toString();
			
			String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage,
					nowPage,req.getContextPath()+ "PartnersRequest.do?searchWord="+searchWord+"&searchColumn="+searchColumn+"&");
			
			
			model.addAttribute("pagingString", pagingString);
			
		}//if
		else {
			
			String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage,
					nowPage,req.getContextPath()+ "PartnersRequest.do?");
			model.addAttribute("pagingString", pagingString);
		}
	
		model.addAttribute("totalRecordCount", totalRecordCount);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageSize", pageSize);		
		model.addAttribute("partner",partner);
					
		return "backend/administration/partnerRequestList.tiles";
	}///partnerRequest
	
	
	
	// 제휴회원 신청 상세보기
	@RequestMapping("PartnersRequestView.do")
	public String partnerRequestView(@RequestParam Map map,Model model) throws Exception {
		
		
		
		List<Map> partnerInfo = service.selectPartnerInfo(map);
		

		
		
		System.out.println("hosname : "+partnerInfo.get(0).toString());
		
		model.addAttribute("HOSNAME",partnerInfo.get(0).get("HOSNAME").toString());
		model.addAttribute("PPHONE",partnerInfo.get(0).get("PPHONE").toString());
		model.addAttribute("HOSADDR",partnerInfo.get(0).get("HOSADDR").toString());
		model.addAttribute("HOSMANAGER",partnerInfo.get(0).get("HOSMANAGER").toString());
		model.addAttribute("BUSINESSNUM",partnerInfo.get(0).get("BUSINESSNUM").toString());
		model.addAttribute("PID",partnerInfo.get(0).get("PID").toString());
		model.addAttribute("PEMAIL",partnerInfo.get(0).get("PEMAIL").toString());
		model.addAttribute("HOSNO",partnerInfo.get(0).get("HOSNO").toString());
		
		
		
		if(partnerInfo.get(0).get("REQUEST") != null) {
			model.addAttribute("REQUEST",partnerInfo.get(0).get("REQUEST").toString().trim());
		}//if
		
		
						
		return "backend/administration/partnerRequestView.tiles";
	}///partnerRequest
	
	
	//제휴회원 수락
	@RequestMapping("PartnerAccept.do")
	public String partnerAccept(@RequestParam Map map,Model model) throws Exception {
		
		service.updateAccept(map);
		
		System.out.println("업데이트 성공 ");
		
		return "forward:PartnersRequest.do";
	}//partnerAccept
	
	//제휴회원 거절
	@RequestMapping("PartnerAcceptNo.do")
	public String partnerAcceptNo(@RequestParam Map map) throws Exception {
	
		// 해당 PID와 관련된 모든 데이터 삭제
		service.deletePID(map);
		
		// 해당 HOSNO와 관련된 모든 데이터 삭제
		service.deleteHOSNO(map);
		
		return "forward:PartnersRequest.do";
	}//partnerAccept
	
	
	
	// 제휴탈퇴 신청 목록
	@RequestMapping("WithdrawalRequest.do")
	public String WithdrawalRequest(HttpServletRequest req,
			@RequestParam Map map,
			Model model,
			@RequestParam(required=false,defaultValue="1") int nowPage) throws Exception {
		
		List<Map> partner = service.selectWithdrawal(map);
		
		String postdate;
		
		for(int i=0; i < partner.size(); i++) {	
			
			postdate = partner.get(i).get("REQDATE").toString().substring(0,10).trim();			
			model.addAttribute("postdate", postdate);			
		}//for
		
		int totalRecordCount= service.getTotalWithdrawalList(map);
		
		int start = (nowPage-1)*pageSize+1;
		int end   = nowPage*pageSize;
		map.put("start",start);
		map.put("end",end);
		
		if(map.get("searchWord") !=null) {
			
			
			String searchWord = map.get("searchWord").toString();
			String searchColumn = map.get("searchColumn").toString();
			
			String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage,
					nowPage,req.getContextPath()+ "PartnersRequest.do?searchWord="+searchWord+"&searchColumn="+searchColumn+"&");
			
			
			model.addAttribute("pagingString", pagingString);
			
		}//if
		else {
			
			String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage,
					nowPage,req.getContextPath()+ "PartnersRequest.do?");
			model.addAttribute("pagingString", pagingString);
		}
	
		model.addAttribute("totalRecordCount", totalRecordCount);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageSize", pageSize);				
		model.addAttribute("partner",partner);
		
		
	
		return "backend/administration/withdrawalRequest.tiles";			
		
	}///partnerRequest
	
	// 제휴탈퇴 신청 상세보기 AND 제휴회원 삭제
	@RequestMapping("WithdrawalRequestView.do")
	public String WithdrawalRequestView(@RequestParam Map map,Model model,HttpServletRequest req) throws Exception {
		
		if(req.getMethod().equals("GET")) {
		
		List<Map> partner = service.selectWithdrawalInfo(map);
		
		model.addAttribute("partner",partner);
		}///if
		
		else {						
			// 해당 PID와 관련된 모든 데이터 삭제
			service.deletePID(map);
			
			// 해당 HOSNO와 관련된 모든 데이터 삭제
			service.deleteHOSNO(map);
			
			return "forward:WithdrawalRequest.do";
			
			
		}////else
						
		return "backend/administration/withdrawalRequestView.tiles";
	}///partnerRequest
	
	// 제휴회원 목록
	@RequestMapping("PartnerList.do")
	public String partnerList(HttpServletRequest req,
			@RequestParam Map map,
			Model model,
			@RequestParam(required=false,defaultValue="1") int nowPage) throws Exception {
		
		List<Map> partner = service.selectPartnerList(map);
		
		System.out.println("가져온 파트너들 정보 : "+partner);
		
		
		int totalRecordCount= service.getTotalPartnerList(map);
		
		int start = (nowPage-1)*pageSize+1;
		int end   = nowPage*pageSize;
		map.put("start",start);
		map.put("end",end);
			String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage,
					nowPage,req.getContextPath()+ "/PartnerList.do?");
			model.addAttribute("pagingString", pagingString);
	
		model.addAttribute("totalRecordCount", totalRecordCount);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageSize", pageSize);				
		model.addAttribute("partner",partner);

		return "backend/administration/partnerList.tiles";
	}/// partnerRequest

	// 제휴회원 상세보기
	@RequestMapping("PartnerView.do")
	public String partnerView(@RequestParam Map map,Model model) throws Exception {
		
		List<Map> partner = service.selectPartnerView(map);
		
		System.out.println("특정회원 상세 정보 : "+partner);
		
		
		List<Map> subjectlist = service.subjectListAll(map);
		
		StringBuffer buffer = new StringBuffer();
		
		for(int i=0; i < subjectlist.size(); i++) {
			
			buffer.append(subjectlist.get(i).get("SUBNAME")+",");
					
		}
		
		String subs = buffer.toString();
		
		subs = buffer.substring(0,subs.lastIndexOf(','));
			
		model.addAttribute("subjectlist",subs);
		
		model.addAttribute("partner",partner);
		
		
		
		

		return "backend/administration/partnerView.tiles";
	}/// partnerRequest
	
	
	//제휴회원 거절
	@RequestMapping("PartnerDelete.do")
	public String partnerDelete(@RequestParam Map map) throws Exception {
	
		// 해당 PID와 관련된 모든 데이터 삭제
		service.deletePID(map);
		
		// 해당 HOSNO와 관련된 모든 데이터 삭제
		service.deleteHOSNO(map);
		
		return "forward:PartnerList.do";
	}//partnerAccept
	
	
	
	
	
	
	
	
	
	
	
	

}//AdministrationController
