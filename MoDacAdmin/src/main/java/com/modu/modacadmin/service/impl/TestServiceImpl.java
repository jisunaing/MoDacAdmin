package com.modu.modacadmin.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.modu.modacadmin.service.TestService;


@Service("testService")
public class TestServiceImpl implements TestService {
	@Resource(name="testDao")
	private TestDao dao;

	@Override
	public int testdb() {
		return dao.testdb();
	}

}
