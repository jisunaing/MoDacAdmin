package com.modu.modacadmin.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.modu.modacadmin.service.HInfoCategDto;
import com.modu.modacadmin.service.HInfoCategService;
import com.modu.modacadmin.service.NoticeDto;
import com.modu.modacadmin.service.NoticeService;

@Service("hInfoCategService")
public class HInfoCategServiceImpl implements HInfoCategService {

	@Resource(name="hInfoCategDao")
	private HInfoCategDao dao;
	
	@Override
	public List<HInfoCategDto> selectList(Map map) {
		return dao.selectList(map);
	}

	@Override
	public HInfoCategDto selectOne(Map map) {
		return dao.selectOne(map);
	}

	@Override
	public int insert(HInfoCategDto dto) {
		return dao.insert(dto);
	}

	@Override
	public int delete(HInfoCategDto dto) {
		return dao.delete(dto);
	}

	@Override
	public int update(HInfoCategDto dto) {
		return dao.update(dto);
	}

	@Override
	public int getTotalRecord(Map map) {
		return dao.getTotalRecord(map);
	}

}
