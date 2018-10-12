package com.modu.modacadmin.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdministrationController {
	
	
	// 제휴회원 신청 목록
	@RequestMapping("PartnersRequest.do")
	public String partnerRequest() throws Exception {
						
		return "backend/administration/partnerRequestList.tiles";
	}///partnerRequest
	
	// 제휴회원 신청 상세보기
	@RequestMapping("PartnersRequestView.do")
	public String partnerRequestView() throws Exception {
						
		return "backend/administration/partnerRequestView.tiles";
	}///partnerRequest
	
	// 제휴탈퇴 신청 목록
	@RequestMapping("WithdrawalRequest.do")
	public String WithdrawalRequest() throws Exception {
						
		return "backend/administration/withdrawalRequest.tiles";
	}///partnerRequest
	
	// 제휴탈퇴 신청 상세보기
	@RequestMapping("WithdrawalRequestView.do")
	public String WithdrawalRequestView() throws Exception {
						
		return "backend/administration/withdrawalRequestView.tiles";
	}///partnerRequest
	
	// 제휴회원 목록
	@RequestMapping("PartnerList.do")
	public String partnerList() throws Exception {

		return "backend/administration/partnerList.tiles";
	}/// partnerRequest

	// 제휴회원 상세보기
	@RequestMapping("PartnerView.do")
	public String partnerView() throws Exception {

		return "backend/administration/partnerView.tiles";
	}/// partnerRequest
	
	
	
	
	
	
	
	
	
	

}//AdministrationController
