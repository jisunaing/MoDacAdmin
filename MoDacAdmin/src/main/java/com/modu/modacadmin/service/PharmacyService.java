package com.modu.modacadmin.service;

import java.util.List;
import java.util.Map;

public interface PharmacyService {
	
	// 목록용]
	List<PharmacyDto> selectList(Map map);
	
	// 전체 레코드 수]
	int getTotalRecord(Map map);
	
	// 상세보기용]
	PharmacyDto selectOne(Map map);
	
	// 입력/수정/삭제용]
	int delete(Map map);
	int insert(Map map);
	int update(Map map);
	
	void close();
	
}
