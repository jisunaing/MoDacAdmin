package com.modu.modacadmin.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.modu.modacadmin.service.PqnaDto;
import com.modu.modacadmin.service.PqnaService;
import com.modu.modacadmin.service.QnaDto;
import com.modu.modacadmin.service.QnaService;

@Service("qnaService")
public class QnaServiceImpl implements QnaService{

	@Resource(name="qnaServiceDao")
	private QnaServiceDao dao;

	@Override
	public List<QnaDto> selectList(Map map) {
		
		return dao.selectList(map);
	}

	@Override
	public int getTotalRecord(Map map) {
		
		return dao.getTotalRecord(map);
	}

	@Override
	public QnaDto selectOne(Map map) {
		
		return dao.selectOne(map);
	}

	@Override
	public int delete(Map map) {
		
		return dao.delete(map);
	}

	
	
}
