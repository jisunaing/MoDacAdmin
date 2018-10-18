package com.modu.modacadmin.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.modu.modacadmin.service.PartnerService;



@Service("partnerService")
public class PartnerServiceImpl implements PartnerService {
	
	@Resource(name="partnerDao")
	private PartnerDao dao;

	@Override
	public List<Map> selectPartnerInfo(Map map) {
		
		return dao.selectPartnerInfo(map);
	}

	@Override
	public List<Map> selectPartnerJoin(Map map) {
		
		return dao.selectPartnerJoin(map);
	}

	@Override
	public List<Map> selectWithdrawal(Map map) {
		
		return dao.selectWithdrawal(map);
	}


	@Override
	public List<Map> selectWithdrawalInfo(Map map) {
		
		return dao.selectWithdrawalInfo(map);
	}

	@Override
	public List<Map> selectPartnerList(Map map) {
		
		return dao.selectPartnerList(map);
	}

	@Override
	public List<Map> selectPartnerView(Map map) {
		
		return dao.selectPartnerView(map);
	}

	
	//제휴 삭제 부분
	
	@Override
	public int deletePID(Map map) {
		return dao.deletePID(map);
	}

	@Override
	public int deleteHOSNO(Map map) {
		return dao.deleteHOSNO(map);
	}

	
	@Override
	public int deletePARTNERS(Map map) {
		return dao.deletePARTNERS(map);
	}

	@Override
	public int updateAccept(Map map) {
		
		return dao.updateAccept(map);
	}

	@Override
	public int getTotalRequestList(Map map) {
		
		return dao.getTotalRequestList(map);
	}

	@Override
	public int getTotalWithdrawalList(Map map) {
		
		return dao.getTotalWithdrawalList(map);
	}

	@Override
	public int getTotalPartnerList(Map map) {
		
		return dao.getTotalPartnerList(map);
	}

	@Override
	public List<Map> subjectListAll(Map map) {
		
		return dao.subjectListAll(map);
	}

	

	

}
