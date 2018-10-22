package com.modu.modacadmin.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.modu.modacadmin.service.HospitalDto;
import com.modu.modacadmin.service.HospitalService;

@Repository
public class HospitalDao implements HospitalService {
	
	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public List<HospitalDto> selectList(Map map) {
		return template.selectList("HospitalList", map);
	}

	@Override
	public int getTotalRecord(Map map) {
		return template.selectOne("HospitalRecordCount", map);
	}

	@Override
	public HospitalDto selectOne(Map map) {
		return template.selectOne("HospitalOne", map);
	}

	@Override
	public int delete(Map map) {
		return template.delete("HospitalDelete", map);
	}

	@Override
	public int insert(Map map) {
		return template.insert("HospitalInsert", map);
	}

	@Override
	public int update(Map map) {
		return template.update("HospitalUpdate", map);
	}

	@Override
	public void close() {
	}

	@Override
	public int insertSubject(Map map) {
		return template.insert("SubjectInsert", map);
	}

	@Override
	public List<HospitalDto> subjectList(Map map) {
		return template.selectList("SubjectList", map);
	}

	@Override
	public int deleteSubject(Map map) {
		return template.delete("SubjectDelete", map);
	}

	@Override
	public int updateSubject(Map map) {
		return template.insert("SubjectUpdate", map);
	}

	@Override
	public List<HospitalDto> partnerSubjectList(Map map) {
		return template.selectList("PartnerSubjectList", map);
	}

	@Override
	public HospitalDto selectPartnerOne(Map map) {
		return template.selectOne("PartnerOne", map);
	}
	
	@Override
	public int deletePartner(Map map) {
		return template.delete("DeletePartner", map);
	}

	@Override
	public int deletePartnerSubject(Map map) {
		return template.delete("DeletePartnerSubject", map);
	}

	
}
