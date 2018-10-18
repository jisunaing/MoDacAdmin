package com.modu.modacadmin.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.modu.modacadmin.service.HospitalDto;
import com.modu.modacadmin.service.HospitalService;

@Service("hospitalService")
public class HospitalServiceImpl implements HospitalService{

	@Resource(name="hospitalDao")
	private HospitalDao dao;

	@Override
	public List<HospitalDto> selectList(Map map) {
		return dao.selectList(map);
	}

	@Override
	public int getTotalRecord(Map map) {
		return dao.getTotalRecord(map);
	}

	@Override
	public HospitalDto selectOne(Map map) {
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

	@Override
	public int insertSubject(Map map) {
		return dao.insertSubject(map);
	}

	@Override
	public List<HospitalDto> subjectList(Map map) {
		return dao.subjectList(map);
	}

	@Override
	public int deleteSubject(Map map) {
		return dao.deleteSubject(map);
	}

	@Override
	public int updateSubject(Map map) {
		return dao.updateSubject(map);
	}
	
}
