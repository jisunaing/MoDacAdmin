package com.modu.modacadmin.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.modu.modacadmin.service.PharmacyDto;
import com.modu.modacadmin.service.PharmacyService;

@Repository
public class PharmacyDao implements PharmacyService {

	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public List<PharmacyDto> selectList(Map map) {
		return template.selectList("PharmacyList", map);
	}

	@Override
	public int getTotalRecord(Map map) {
		return template.selectOne("PharmacyRecordCount", map);
	}

	@Override
	public PharmacyDto selectOne(Map map) {
		return template.selectOne("PharmacyOne", map);
	}

	@Override
	public int delete(Map map) {
		return template.delete("PharmacyDelete", map);
	}

	@Override
	public int insert(Map map) {
		return template.insert("PharmacyInsert", map);
	}

	@Override
	public int update(Map map) {
		return template.update("PharmacyUpdate", map);
	}

	@Override
	public void close() {
	}
}
