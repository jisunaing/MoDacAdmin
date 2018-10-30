package com.modu.modacadmin.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.stereotype.Repository;

import com.modu.modacadmin.service.ManagersDto;
import com.modu.modacadmin.service.ManagersService;


@Repository
//@Configurable
public class ManagersDao implements ManagersService {
	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public boolean isManager(Map<String, String> map) {
		System.out.println(template);
//		System.out.println("id:"+map.get("mpid").toString());
//		System.out.println("결과:"+template.selectOne("loginIsManager", map));
		return (Integer)template.selectOne("loginIsManager", map) == 1? true: false;
	}
	
	@Override
	public int insert(ManagersDto dto) {
		return template.insert("managerInert", dto);
	}
} // isManager