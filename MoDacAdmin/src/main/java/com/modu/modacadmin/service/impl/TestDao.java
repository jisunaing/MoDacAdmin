package com.modu.modacadmin.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.modu.modacadmin.service.TestService;


@Repository
public class TestDao implements TestService {
	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public int testdb() {
		return template.selectOne("dbtest");
	}


}