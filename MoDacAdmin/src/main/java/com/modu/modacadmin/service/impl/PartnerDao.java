package com.modu.modacadmin.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.modu.modacadmin.service.PartnerService;


@Repository
public class PartnerDao implements PartnerService {
	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public List<Map> selectPartnerInfo(Map map) {
		
		return template.selectList("PartnerInfo",map);
	}

	@Override
	public List<Map> selectPartnerJoin(Map map) {
		
		return template.selectList("PartnerJoin",map);
	}

	@Override
	public List<Map> selectWithdrawal(Map map) {
		
		return template.selectList("PartnerWithdrawal",map);
	}


	@Override
	public List<Map> selectWithdrawalInfo(Map map) {
		
		
		
		return template.selectList("PartnerWithdrawalInfo",map);
	}

	@Override
	public List<Map> selectPartnerList(Map map) {		
		
		return template.selectList("PartnerList",map);
	}

	@Override
	public List<Map> selectPartnerView(Map map) {
		
		return template.selectList("partnerView",map);
	}

	
	
	
	//제휴 삭제용
	@Override
	public int deletePID(Map map) {
				
	return template.delete("DeletePID",map);

	}

	@Override
	public int deleteHOSNO(Map map) {
				
			return template.delete("DeleteHOSNO", map);
						
		}		


	@Override
	public int deletePARTNERS(Map map) {
	
		return template.delete("DeletePARTNERS",map);
	}

	@Override
	public int updateAccept(Map map) {
		
		return template.update("UpdateAccept",map);
	}

	@Override
	public int getTotalRequestList(Map map) {
		
		return template.selectOne("GetTotalRequest",map);
	}

	@Override
	public int getTotalWithdrawalList(Map map) {
		return template.selectOne("GetTotalWithdrawal",map);
	}

	@Override
	public int getTotalPartnerList(Map map) {
		return template.selectOne("GetTotalPartner",map);
	}

	@Override
	public List<Map> subjectListAll(Map map) {
		
		return template.selectList("PartnerSubjectListAll",map);
	}


	
}