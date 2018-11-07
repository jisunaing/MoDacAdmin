package com.modu.modacadmin.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.modu.modacadmin.service.PqnaDto;
import com.modu.modacadmin.service.PqnaService;


@Service("pqnaService")
public class PqnaServiceImpl implements PqnaService{

	@Resource(name="pqnaDao")
	private PqnaDao dao;

	@Override
	public List<PqnaDto> selectList(Map map) {
		
		return dao.selectList(map);
	}

	@Override
	public int getTotalRecord(Map map) {
		
		return dao.getTotalRecord(map);
	}

	@Override
	public PqnaDto selectOne(Map map) {
		
		return dao.selectOne(map);
	}

	@Override
	public int delete(Map map) {
		
		return dao.delete(map);
	}

	
	
}
