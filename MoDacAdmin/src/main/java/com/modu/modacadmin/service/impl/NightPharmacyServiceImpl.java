package com.modu.modacadmin.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.modu.modacadmin.service.NightPharmacyDto;
import com.modu.modacadmin.service.NightPharmacyService;

@Service("nightPharmacyService")
public class NightPharmacyServiceImpl implements NightPharmacyService {

	@Resource(name="nightPharmacyDao")
	private NightPharmacyDao dao;

	@Override
	public List<NightPharmacyDto> selectList(Map map) {
		return dao.selectList(map);
	}

	@Override
	public int getTotalRecord(Map map) {
		return dao.getTotalRecord(map);
	}

	@Override
	public NightPharmacyDto selectOne(Map map) {
		return dao.selectOne(map);
	}

	@Override
	public int delete(Map map) {
		return dao.delete(map);
	}

	@Override
	public int insert(Map map) {
		return dao.insert(map);
	}

	@Override
	public int update(Map map) {
		return dao.update(map);
	}

	@Override
	public void close() {
	}
	
	
	
}
