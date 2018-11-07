package com.modu.modacadmin.service;

import java.util.List;
import java.util.Map;

public interface PqnaService{
	
	// 목록용]
	List<PqnaDto> selectList(Map map);
	
	// 전체 레코드 수]
	int getTotalRecord(Map map);
	
	// 상세보기용]
	PqnaDto selectOne(Map map);
	
	// 글 삭제용]
	int delete(Map map);

	
	
}
