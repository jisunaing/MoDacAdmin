package com.modu.modacadmin.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.modu.modacadmin.service.HInfoCategDto;
import com.modu.modacadmin.service.HInfoCategService;
import com.modu.modacadmin.service.NoticeDto;
import com.modu.modacadmin.service.NoticeService;

@Repository("hInfoCategDao")
public class HInfoCategDao implements HInfoCategService {
	
	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public List<HInfoCategDto> selectList(Map map) {
		return template.selectList("hinfocategList", map);
	}

	@Override
	public HInfoCategDto selectOne(Map map) {
		return template.selectOne("hinfocategOne", map);
	}
	
	@Override
	public int insert(HInfoCategDto dto) {
		return template.insert("hinfocategInsert", dto);
	}

  	@Override
	public int delete(HInfoCategDto dto) {
		return template.delete("hinfocategDelete", dto);
	}

	@Override
	public int update(HInfoCategDto dto) {
		return template.update("hinfocategUpdate", dto);
	}

	@Override
	public int getTotalRecord(Map map) {
		return template.selectOne("hinfocategTotal", map);
	}

}
