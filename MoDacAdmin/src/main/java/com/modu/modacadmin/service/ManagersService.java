package com.modu.modacadmin.service;

import java.util.Map;

public interface ManagersService {
	boolean isManager(Map<String, String> map);
	
	// �����ڰ������
	int insert(ManagersDto dto);
} // interface
