package com.modu.modacadmin.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.modu.modacadmin.service.HInfoCategDto;
import com.modu.modacadmin.service.HInfoCategService;
import com.modu.modacadmin.service.HInfoDto;
import com.modu.modacadmin.service.HInfoService;
import com.modu.modacadmin.service.NoticeDto;
import com.modu.modacadmin.service.NoticeService;

@Service("hInfoService")
public class HInfoServiceImpl implements HInfoService {

	@Resource(name="hInfoDao")
	private HInfoDao dao;
	
	@Override
	public List<HInfoDto> selectList(Map map) {
		System.out.println("categno_impl: "+map.get("categno"));
		return dao.selectList(map);
	}

	@Override
	public HInfoDto selectOne(Map map) {
		return dao.selectOne(map);
	}

	@Override
	public int insert(HInfoDto dto) {
		return dao.insert(dto);
	}

	@Override
	public int delete(HInfoDto dto) {
		return dao.delete(dto);
	}

	@Override
	public int update(HInfoDto dto) {
		return dao.update(dto);
	}

	@Override
	public int getTotalRecord(Map map) {
		return dao.getTotalRecord(map);
	}

}
