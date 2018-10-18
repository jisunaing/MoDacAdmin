package com.modu.modacadmin.service;

import java.util.List;
import java.util.Map;

public interface HospitalService {

	// 목록용]
	List<HospitalDto> selectList(Map map);
	List<HospitalDto> subjectList(Map map);
	
	// 전체 레코드 수]
	int getTotalRecord(Map map);
	
	// 상세보기용]
	HospitalDto selectOne(Map map);
	
	// 입력/수정/삭제용]
	int delete(Map map);
	int deleteSubject(Map map);
	int insert(Map map);
	int insertSubject(Map map);
	int update(Map map);
	int updateSubject(Map map);
	
	void close();

}
