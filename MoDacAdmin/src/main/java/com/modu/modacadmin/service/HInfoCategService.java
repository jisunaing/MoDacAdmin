package com.modu.modacadmin.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

public interface HInfoCategService {
	// list
	List<HInfoCategDto> selectList(Map map);
	
	// view
	HInfoCategDto selectOne(Map map);
	
	// insert
	int insert(HInfoCategDto dto);
	
	// delete
	int delete(HInfoCategDto dto);
	
	// update
	int update(HInfoCategDto dto);
	
	// record_count
	int getTotalRecord(Map map);
	 
}