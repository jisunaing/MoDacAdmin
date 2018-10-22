package com.modu.modacadmin.service;

import java.util.List;
import java.util.Map;

public interface PartnerService {
	
	//제휴 신청 들어온 목록
	List<Map> selectPartnerJoin(Map map);
	//제휴 상세보기 쪽
	List<Map> selectPartnerInfo(Map map);
	
	
	//제휴 탈퇴 들어온 목록
	List<Map> selectWithdrawal(Map map);
	//탈퇴 상세보기 쪽
	List<Map> selectWithdrawalInfo(Map map);
	
	//제휴회원의 목록
	List<Map> selectPartnerList(Map map);
	//제휴회원 상세보기
	List<Map> selectPartnerView(Map map);
	
	//특정회원 진료과목 다 가져오기
	List<Map> subjectListAll(Map map);
	
	
	//회원탈퇴 부분
	
	int deletePID(Map map);
	int deleteHOSNO (Map map);	
	int deletePARTNERS(Map map);
	
	//회원 수락 부분
	int updateAccept(Map map);
	
	//페이징 부분
	
	int getTotalRequestList(Map map); //제휴회원 리스트쪽
	int getTotalWithdrawalList(Map map); //제휴탈퇴 리스트쪽
	int getTotalPartnerList(Map map); //제휴회원 전체 리스트쪽
	

	// 재민 : Partner의 hosno 수정
	int updatePartnerHospital(Map map);
	// 재민 끝
	
}///PartnerService
