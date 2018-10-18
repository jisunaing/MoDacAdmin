package com.modu.modacadmin.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.modu.modacadmin.service.NightPharmacyDto;
import com.modu.modacadmin.service.NightPharmacyService;

@Repository
public class NightPharmacyDao implements NightPharmacyService{

	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public List<NightPharmacyDto> selectList(Map map) {
		return template.selectList("NightPharmacyList", map);
	}

	@Override
	public int getTotalRecord(Map map) {
		return template.selectOne("NightPharmacyRecordCount", map);
	}

	@Override
	public NightPharmacyDto selectOne(Map map) {
		return template.selectOne("NightPharmacyOne", map);
	}

	@Override
	public int delete(Map map) {
		return template.delete("NightPharmacyDelete", map);
	}

	@Override
	public int insert(Map map) {
		return template.insert("NightPharmacyInsert", map);
	}

	@Override
	public int update(Map map) {
		return template.update("NightPharmacyUpdate", map);
	}

	@Override
	public void close() {
	}
	
	
}
