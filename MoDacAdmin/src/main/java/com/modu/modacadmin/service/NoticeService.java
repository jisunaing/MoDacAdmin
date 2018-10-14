package com.modu.modacadmin.service;

import java.util.List;
import java.util.Map;

public interface NoticeService {
	// list
	List<NoticeDto> selectList(Map map);
	
	// view
	NoticeDto  selectOne(Map map);
	
	// insert
	int insert(NoticeDto dto);
	
	// delete
	int delete(NoticeDto dto);
	
	// update
	int update(NoticeDto dto);
	
	// record_count
	int getTotalRecord(Map map);
	 
}