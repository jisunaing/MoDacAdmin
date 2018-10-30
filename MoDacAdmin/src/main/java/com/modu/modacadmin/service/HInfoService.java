package com.modu.modacadmin.service;

import java.util.List;
import java.util.Map;


public interface HInfoService {
	// list
	List<HInfoDto> selectList(Map map);
	
	// view
	HInfoDto selectOne(Map map);
	
	// insert
	int insert(HInfoDto dto);
	
	// delete
	int delete(HInfoDto dto);
	
	// update
	int update(HInfoDto dto);
	
	// record_count
	int getTotalRecord(Map map);
	 
}