package com.modu.modacadmin.service;

import java.util.Map;

public interface ManagersService {
	boolean isManager(Map<String, String> map);
	
	// 관리자계정등록
	int insert(ManagersDto dto);
} // interface
