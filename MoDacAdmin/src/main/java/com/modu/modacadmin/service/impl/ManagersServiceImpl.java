package com.modu.modacadmin.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.modu.modacadmin.service.ManagersDto;
import com.modu.modacadmin.service.ManagersService;

@Service("managersService")
public class ManagersServiceImpl implements ManagersService{
	
	@Resource(name="managersDao")
	private ManagersDao dao;

	@Override
	public boolean isManager(Map<String, String> map) {
		return dao.isManager(map);
	} // isManager
	
	@Override
	public int insert(ManagersDto dto) {
		return dao.insert(dto);
	}
} // class
