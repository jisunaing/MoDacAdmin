package com.modu.modacadmin.service;

import java.util.List;
import java.util.Map;

public interface QnaService {
	
	// 목록용]
	List<QnaDto> selectList(Map map);
	
	// 전체 레코드 수]
	int getTotalRecord(Map map);
	
	// 상세보기용]
	QnaDto selectOne(Map map);
	
	// 글 삭제용]
	int delete(Map map);

	
	
}
